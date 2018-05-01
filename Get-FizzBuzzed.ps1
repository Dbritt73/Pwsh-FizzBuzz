
function Get-FizzBuzzed {
    <#
    .SYNOPSIS
    Function for Fizzbuzz, a common interview scenario for prospective coders
    
    .DESCRIPTION
    Long description
    
    .PARAMETER Numbers
    Type integer, can supply 1 or many inputs.
    
    .EXAMPLE
    (1..15) | Get-FizzBuzzed

    .EXAMPLE
    Get-FizzBuzzed -Numbers (1..15)
    
    #>

   [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$true,
               ValueFromPipeline=$true,
               Position=0)]
        [INT[]]$Numbers
    )

    Begin {}

    Process {

        ForEach ($Number in $Numbers) {

            if ((((($Number/3 -is [int])) -eq $True) -AND ((($Number/5 -is [int])) -eq $TRUE)) -eq $TRUE) {

                Write-Output "FizzBuzz"

            } elseif ((((($Number/3 -is [int])) -eq $True) -AND ((($Number/5 -is [int])) -eq $False)) -eq $TRUE) {
                
                Write-Output "FIZZ"

            } elseif ((((($Number/3 -is [int])) -eq $False) -AND ((($Number/5 -is [int])) -eq $TRUE)) -eq $TRUE) {

                Write-Output "BUZZ"
            
            } else {
            
                Write-Output "$Number"
            
            }

        }

    }

    End {}
    
}
    