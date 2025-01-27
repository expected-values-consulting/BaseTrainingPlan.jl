module BaseTrainingPlan
    using Revise
    using CSV
    using DataFrames


    export
        read_training_assessment_file,
        generate_modules_from_training_assessment


    function _test_training_assessment_file(df::DataFrame)
        @assert length(names(df)) == 2 "Number of columns is not as expected."
        @assert names(df) == ["Index", "Title"] "Column names are not as expected."
        @assert all([i isa String for i in df.Title]) "Not all values in Skill column are strings."
        @assert all([!isempty(i) for i in df.Title]) "Skill desciprtion in Skill column is empty."
    end

    function read_training_assessment_file(file_name)
        assessment_file = CSV.read(file_name,DataFrame, header=true)
        _test_training_assessment_file(assessment_file)
        assessment_file
    end

    function generate_modules_from_training_assessment(file_name)
        assessment_file = CSV.read(file_name,DataFrame, header=true)
        _test_training_assessment_file(assessment_file)
        assessment_file.Title
    end

end
