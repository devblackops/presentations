
function Get-AnswerToUniverse {
    42
}

Describe '[Answer to universe]' {
    It 'The answer is [42]]' {
        $answer = Get-AnswerToUniverse
        $answer | Should -Be 42
    }
}