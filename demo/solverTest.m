function test_suite = test_assert_equal()

    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions();
    catch % no problem; early Matlab versions can use initTestSuite fine
    end

    initTestSuite;
end

function solverTest()
    test_functions = localfunctions();

    for n_test = 1:size(test_functions)

        try
            test_func = test_functions{n_test};
            test_func()
            display([func2str(test_func), " succeeded"])
        catch
            display([func2str(test_func), " FAILED"])
        end

    end

end

function testRealSolution()
    actSolution = quadraticSolver(1, -3, 2);
    expSolution = [2 1];
    assert(all(actSolution == expSolution));
end

function testImaginarySolution()
    actSolution = quadraticSolver(1, 2, 10);
    expSolution = [-1 + 3i -1 - 3i];
    assert(all(actSolution == expSolution));
end

function testImaginarySolutionFailing()
    actSolution = quadraticSolver(1, 12, 10);
    expSolution = [-1 + 3i -1 - 3i];
    assert(all(actSolution == expSolution));
end
