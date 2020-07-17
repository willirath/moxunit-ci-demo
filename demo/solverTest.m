function test_suite = solverTest()

    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions();
    catch % no problem; early Matlab versions can use initTestSuite fine
    end

    initTestSuite;
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
