module BaseTrainingPlan
    using Revise
    using CSV
    using DataFrames


    export
        read_training_assessment_file,
        generate_modules_from_training_assessment


    function test_training_assessment_file(df::DataFrame)
        @assert length(names(df)) == 4 "Number of columns is not as expected."
        @assert names(df) == ["Number", "Skill", "Current_skills", "Desired_skill"] "Column names are not as expected."
        @assert all([i isa String for i in df.Skill]) "Not all values in Skill column are strings."
        @assert all([!isempty(i) for i in df.Skill]) "Skill desciprtion in Skill column is empty."
        @assert all([i isa Number for i in df.Current_skills]) "Not all values in Current_skills column are numbers."
        @assert all([i ∈ 0:5   for i in df.Current_skills]) "Not all values in Current_skills column are in 0:5."
        @assert all([i isa Number for i in df.Desired_skill]) "Not all values in Desired_skill column are numbers."
        @assert all([i ∈ 0:5   for i in df.Desired_skill]) "Not all values in Desired_skill column are in 0:5."
    end

    function read_training_assessment_file(file_name)
        assessment_file = CSV.read(file_name,DataFrame, header=true)
        test_training_assessment_file(assessment_file)
        assessment_file
    end

    function generate_modules_from_training_assessment(file_name)
        assessment_file = CSV.read(file_name,DataFrame, header=true)
        test_training_assessment_file(assessment_file)
        assessment_file.Skill
    end

end
