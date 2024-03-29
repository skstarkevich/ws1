$a = Get-WmiObject -Class Win32_Product -Filter {name = "iTunes"} | Select -ExpandProperty IdentifyingNumber

Start-Process "msiexec.exe" -ArgumentList "/x $($a)","/q" -Wait
# SIG # Begin signature block
# MIIM3gYJKoZIhvcNAQcCoIIMzzCCDMsCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUSZBWpLtfJVbUx5pV+JPkrhOO
# BUCgggobMIIE7TCCA9WgAwIBAgITKQAAAAM/i0+xse/OwwAAAAAAAzANBgkqhkiG
# 9w0BAQsFADBwMQswCQYDVQQGEwJSVTESMBAGA1UEChMJU2JlckNsb3VkMRwwGgYD
# VQQLExNTeXN0ZW0td2lkZSBTZXJ2aWNlMS8wLQYDVQQDEyZTYmVyQ2xvdWQgUm9v
# dCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0yMTAzMTUwODQ4NTJaFw0zMTAz
# MTUwNjMwMzRaMHQxCzAJBgNVBAYTAlJVMRIwEAYDVQQKEwlTYmVyQ2xvdWQxHTAb
# BgNVBAsTFFN5c3RlbS13aWRlIHNlcnZpY2VzMTIwMAYDVQQDEylTYmVyQ2xvdWQg
# SXNzdWluZyBDZXJ0aWZpY2F0aW9uIGF1dGhvcml0eTCCASIwDQYJKoZIhvcNAQEB
# BQADggEPADCCAQoCggEBALtdpV43QGAy2gVe9S2zalPFpr5SomPE8Qfzfl2eECD/
# CRDDO+NDN1jHsG1b/h8ncl1gkuR5dGzYHpvcW186nwxQzySbuFKjKS8GFZJhbMba
# TsU140mVsCPLC+f3ak+IjafjT9+9Op225lIUaJ7lUbcvDtpw9dzgCrxBlQKowMD5
# IxtpZNrPEy5HAUFr+Lw1+HSGJ+oDomm6nXR6dAUKmRbDiY4ccnLNmou6FZTrjIqP
# 22fTsJF8bH/d5cBQ6vdotK8f2nR22ydtr3Qnml3cBbiaU+z2lHquMn53dLmlQCXX
# nsqRhWrLMf6hYloEAeMpXM9Ern1OCU0hYSJGYdNLPx0CAwEAAaOCAXowggF2MBAG
# CSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTZQOqjecTBHh0GAtIvBBdqthOXRjBU
# BgNVHSAETTBLMEkGBFUdIAAwQTA/BggrBgEFBQcCARYzaHR0cDovL2NkcC5jb3Jw
# LnNiZXJjbG91ZC5ydS9wa2kvc2JlcmNsb3VkLWNwcy5odG1sMBkGCSsGAQQBgjcU
# AgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8G
# A1UdIwQYMBaAFDiUaZDJNHmZ0KxHPAa7+FfuD7X4MEMGA1UdHwQ8MDowOKA2oDSG
# Mmh0dHA6Ly9jZHAuY29ycC5zYmVyY2xvdWQucnUvcGtpL3NiZXJjbG91ZC1yY2Eu
# Y3JsME4GCCsGAQUFBwEBBEIwQDA+BggrBgEFBQcwAoYyaHR0cDovL2NkcC5jb3Jw
# LnNiZXJjbG91ZC5ydS9wa2kvc2JlcmNsb3VkLXJjYS5jcnQwDQYJKoZIhvcNAQEL
# BQADggEBABEybiaCbvkWgTfdTR16/lL7TICZG4w++PVBHwOJWi6aG+Q3bfqlLZMj
# U2moibQwJ1CtmCKvZvTUTOFOGo9Mk/1s70sckmv73xLX203bHiTXQe1l5YPWGIZ7
# Xv/42TOEqgDJO1rFN5HrYWPmSpYn6DS0mzk6FOhE4DCpZfTDBbOganUVoNhexEEZ
# mtYwikQ4mEUKgRIM1awfOWfObgUBpIq4+A/1EWDwnX7WvuJvAjLtb1nPoFoNLlgP
# yu6JFgCBFaOd4XWXlpRc+xKmrvbUX8wkFlg4Ujf+2DBi7hO+YNUG3loKsLZP+M/T
# CxueUH6BKcEdhDPy/W8/L3NcMaAXfEswggUmMIIEDqADAgECAhMoAABsB84p6v8O
# A/5jAAAAAGwHMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlJVMRIwEAYDVQQK
# EwlTYmVyQ2xvdWQxHTAbBgNVBAsTFFN5c3RlbS13aWRlIHNlcnZpY2VzMTIwMAYD
# VQQDEylTYmVyQ2xvdWQgSXNzdWluZyBDZXJ0aWZpY2F0aW9uIGF1dGhvcml0eTAe
# Fw0yMzA3MTAxMDAwMDRaFw0yODA3MDgxMDAwMDRaMCExHzAdBgNVBAMTFlNlcmdl
# eSBTdGFya2VldmljaCBBRE0wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDguhm3gASojm1ajjioHFFrAiLDZ5zsQtx88yDRIshQRiJmuOGeBdHrAYjg9zAi
# NBvRVVDI3JKnE78eo62aqRmKI7lYfDk7/EbMhBOJSoWUVlHstLSU67kl7fphLR/G
# UHV1I3r3QnOK9f5GKze2wUSkT0jncC6SvuGtW0xusqzNjtaUyphQTHk5v13QGjfS
# 5HJRaXkzF2GMJBuqFZLNitcVhGUt77iBDTjkKO4JuvitLNGagK+Son6FAYjxSjmP
# VWYwtYqbymfX7jj6l37yopE/DJdm/oaSYKcgH7l8wuMpxSpGQyl6Rts3me1j2iqy
# XU4ZAVMaZTCPdJIs8meX3G8hAgMBAAGjggICMIIB/jA8BgkrBgEEAYI3FQcELzAt
# BiUrBgEEAYI3FQjhu06Bgtp3geGTKITugRWBpIoDVYK9sWmGhKszAgFlAgELMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMA4GA1UdDwEB/wQEAwIFoDAbBgkrBgEEAYI3FQoE
# DjAMMAoGCCsGAQUFBwMDMB0GA1UdDgQWBBQOsjzXeDN7evjJqNFxq5Ue5Y5UKjAf
# BgNVHSMEGDAWgBTZQOqjecTBHh0GAtIvBBdqthOXRjBEBgNVHR8EPTA7MDmgN6A1
# hjNodHRwOi8vY2RwLmNvcnAuc2JlcmNsb3VkLnJ1L3BraS9zYmVyY2xvdWQtcGlj
# YS5jcmwwTwYIKwYBBQUHAQEEQzBBMD8GCCsGAQUFBzAChjNodHRwOi8vY2RwLmNv
# cnAuc2JlcmNsb3VkLnJ1L3BraS9zYmVyY2xvdWQtcGljYS5jcnQwVQYDVR0RBE4w
# TKAuBgorBgEEAYI3FAIDoCAMHmFkbS1za3N0YXJrZWV2aWNoQHNiZXJjbG91ZC5y
# dYEaYWRtLXNrc3RhcmtlZXZpY2hAY2xvdWQucnUwTgYJKwYBBAGCNxkCBEEwP6A9
# BgorBgEEAYI3GQIBoC8ELVMtMS01LTIxLTU5MjEzMjI5OS03NTg2NDU2MDItMTM3
# NDIzMjk2Ny0xMTAyMzANBgkqhkiG9w0BAQsFAAOCAQEAdgLl3k44IcCTpiumLMFq
# DCUkUxGOTNqFplKefENiPTMyqWkIcDCew7P2cKMiK8PQtzSSxx4MsJdz564gOBel
# 5wz9v6OZ3oi5jlSCVVT4Wq2DsjKcc8ebfiPi/fvVhAq/CcnfkjnDkMRtpJJbwMEo
# 5iG/09CitZN3oJaRBUsnb3DA0DvoBTbbXqxDvKGD7lTZpONapqqI7DlxK4ar98jA
# wVyELbAppXCiYhezX0BKF5KdfALtokZrrJrKzYdKuCohH6RzgXt1jJmgud8nB775
# m3S+iwBwdi0cpKVWA0tPmhbEqT5sdLZfVqEO/jrDRD4wRpou2HFYZGxdun01d1LX
# QDGCAi0wggIpAgEBMIGLMHQxCzAJBgNVBAYTAlJVMRIwEAYDVQQKEwlTYmVyQ2xv
# dWQxHTAbBgNVBAsTFFN5c3RlbS13aWRlIHNlcnZpY2VzMTIwMAYDVQQDEylTYmVy
# Q2xvdWQgSXNzdWluZyBDZXJ0aWZpY2F0aW9uIGF1dGhvcml0eQITKAAAbAfOKer/
# DgP+YwAAAABsBzAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKA
# ADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYK
# KwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUoAHX3bqRcoIfAd0p15cmZ0rNP/4w
# DQYJKoZIhvcNAQEBBQAEggEAKKdNl/X5UVvdSbaMlxx7ofrq3683Zt8VL/yoruTL
# wVArBPYpLCOgQsUAA3jyx6dTBbvURA5h5EzcTv+tywi0+uZ86gth4mP+REaxtweM
# 8RKdqsZIImpAxZ6n5LdPhVs7I5Tz3U7cEBFUsXicm4c10gyBxiO5lcgi/fQjXsyo
# LmAz2ih0dqTUKkrNf3/GsHLSChgQ387zfEjWqejjLE+G71Jrf5vyNqHraN8mNopd
# 4ZQwJ83m/rb+KHR2gj7QNLnAosowxpCd9hitY+s8bHCG+Gc1oF/GbZBfBjF5xHgH
# fejx0jzJZm2x3LUp252f0ffRzwR3Ot0g1SH5/XvyaL0GEw==
# SIG # End signature block
