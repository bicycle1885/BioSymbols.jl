using Base.Test

using BioSymbols

@testset "NucleicAcids" begin
    @testset "Conversions" begin
        @testset "UInt8" begin
            @testset "DNA conversions from UInt8" begin
                @test convert(DNA, 0b0000) === DNA_Gap
                @test convert(DNA, 0b0001) === DNA_A
                @test convert(DNA, 0b0010) === DNA_C
                @test convert(DNA, 0b0011) === DNA_M
                @test convert(DNA, 0b0100) === DNA_G
                @test convert(DNA, 0b0101) === DNA_R
                @test convert(DNA, 0b0110) === DNA_S
                @test convert(DNA, 0b0111) === DNA_V
                @test convert(DNA, 0b1000) === DNA_T
                @test convert(DNA, 0b1001) === DNA_W
                @test convert(DNA, 0b1010) === DNA_Y
                @test convert(DNA, 0b1011) === DNA_H
                @test convert(DNA, 0b1100) === DNA_K
                @test convert(DNA, 0b1101) === DNA_D
                @test convert(DNA, 0b1110) === DNA_B
                @test convert(DNA, 0b1111) === DNA_N
            end

            @testset "RNA conversions from UInt8" begin
                @test convert(RNA, 0b0000) === RNA_Gap
                @test convert(RNA, 0b0001) === RNA_A
                @test convert(RNA, 0b0010) === RNA_C
                @test convert(RNA, 0b0011) === RNA_M
                @test convert(RNA, 0b0100) === RNA_G
                @test convert(RNA, 0b0101) === RNA_R
                @test convert(RNA, 0b0110) === RNA_S
                @test convert(RNA, 0b0111) === RNA_V
                @test convert(RNA, 0b1000) === RNA_U
                @test convert(RNA, 0b1001) === RNA_W
                @test convert(RNA, 0b1010) === RNA_Y
                @test convert(RNA, 0b1011) === RNA_H
                @test convert(RNA, 0b1100) === RNA_K
                @test convert(RNA, 0b1101) === RNA_D
                @test convert(RNA, 0b1110) === RNA_B
                @test convert(RNA, 0b1111) === RNA_N
            end

            @testset "DNA conversions to UInt8" begin
                @test convert(UInt8, DNA_Gap) === 0b0000
                @test convert(UInt8, DNA_A)   === 0b0001
                @test convert(UInt8, DNA_C)   === 0b0010
                @test convert(UInt8, DNA_M)   === 0b0011
                @test convert(UInt8, DNA_G)   === 0b0100
                @test convert(UInt8, DNA_R)   === 0b0101
                @test convert(UInt8, DNA_S)   === 0b0110
                @test convert(UInt8, DNA_V)   === 0b0111
                @test convert(UInt8, DNA_T)   === 0b1000
                @test convert(UInt8, DNA_W)   === 0b1001
                @test convert(UInt8, DNA_Y)   === 0b1010
                @test convert(UInt8, DNA_H)   === 0b1011
                @test convert(UInt8, DNA_K)   === 0b1100
                @test convert(UInt8, DNA_D)   === 0b1101
                @test convert(UInt8, DNA_B)   === 0b1110
                @test convert(UInt8, DNA_N)   === 0b1111
            end

            @testset "RNA conversions to UInt8" begin
                @test convert(UInt8, RNA_Gap) === 0b0000
                @test convert(UInt8, RNA_A)   === 0b0001
                @test convert(UInt8, RNA_C)   === 0b0010
                @test convert(UInt8, RNA_M)   === 0b0011
                @test convert(UInt8, RNA_G)   === 0b0100
                @test convert(UInt8, RNA_R)   === 0b0101
                @test convert(UInt8, RNA_S)   === 0b0110
                @test convert(UInt8, RNA_V)   === 0b0111
                @test convert(UInt8, RNA_U)   === 0b1000
                @test convert(UInt8, RNA_W)   === 0b1001
                @test convert(UInt8, RNA_Y)   === 0b1010
                @test convert(UInt8, RNA_H)   === 0b1011
                @test convert(UInt8, RNA_K)   === 0b1100
                @test convert(UInt8, RNA_D)   === 0b1101
                @test convert(UInt8, RNA_B)   === 0b1110
                @test convert(UInt8, RNA_N)   === 0b1111
            end
        end

        @testset "UInt64" begin
            @testset "DNA conversions from UInt64" begin
                @test convert(DNA, UInt64(0b0000)) === DNA_Gap
                @test convert(DNA, UInt64(0b0001)) === DNA_A
                @test convert(DNA, UInt64(0b0010)) === DNA_C
                @test convert(DNA, UInt64(0b0100)) === DNA_G
                @test convert(DNA, UInt64(0b1000)) === DNA_T
                @test convert(DNA, UInt64(0b1111)) === DNA_N
            end

            @testset "RNA conversions from UInt64" begin
                @test convert(RNA, UInt64(0b0000)) === RNA_Gap
                @test convert(RNA, UInt64(0b0001)) === RNA_A
                @test convert(RNA, UInt64(0b0010)) === RNA_C
                @test convert(RNA, UInt64(0b0100)) === RNA_G
                @test convert(RNA, UInt64(0b1000)) === RNA_U
                @test convert(RNA, UInt64(0b1111)) === RNA_N
            end

            @testset "DNA conversions to UInt64" begin
                @test convert(UInt64, DNA_Gap) === UInt64(0b0000)
                @test convert(UInt64, DNA_A)   === UInt64(0b0001)
                @test convert(UInt64, DNA_C)   === UInt64(0b0010)
                @test convert(UInt64, DNA_G)   === UInt64(0b0100)
                @test convert(UInt64, DNA_T)   === UInt64(0b1000)
                @test convert(UInt64, DNA_N)   === UInt64(0b1111)
            end

            @testset "RNA conversions to UInt64" begin
                @test convert(UInt64, RNA_Gap) === UInt64(0b0000)
                @test convert(UInt64, RNA_A)   === UInt64(0b0001)
                @test convert(UInt64, RNA_C)   === UInt64(0b0010)
                @test convert(UInt64, RNA_G)   === UInt64(0b0100)
                @test convert(UInt64, RNA_U)   === UInt64(0b1000)
                @test convert(UInt64, RNA_N)   === UInt64(0b1111)
            end
        end

        @testset "Char" begin
            @testset "DNA conversions from Char" begin
                @test convert(DNA, 'A') == DNA_A
                @test convert(DNA, 'C') == DNA_C
                @test convert(DNA, 'G') == DNA_G
                @test convert(DNA, 'T') == DNA_T
                @test convert(DNA, 'N') == DNA_N
            end

            @testset "RNA conversions from Char" begin
                @test convert(RNA, 'A') == RNA_A
                @test convert(RNA, 'C') == RNA_C
                @test convert(RNA, 'G') == RNA_G
                @test convert(RNA, 'U') == RNA_U
                @test convert(RNA, 'N') == RNA_N
            end

            @testset "DNA conversions to Char" begin
                @test convert(Char, DNA_A) == 'A'
                @test convert(Char, DNA_C) == 'C'
                @test convert(Char, DNA_G) == 'G'
                @test convert(Char, DNA_T) == 'T'
                @test convert(Char, DNA_N) == 'N'
            end

            @testset "RNA conversions to Char" begin
                @test convert(Char, RNA_A) == 'A'
                @test convert(Char, RNA_C) == 'C'
                @test convert(Char, RNA_G) == 'G'
                @test convert(Char, RNA_U) == 'U'
                @test convert(Char, RNA_N) == 'N'
            end
        end

        @testset "Other numeric types" begin
            @test convert(Int, DNA_A) === 1
            @test convert(Int, DNA_C) === 2
            @test convert(Int, DNA_G) === 4
            @test convert(Int, DNA_T) === 8
            @test convert(Int, DNA_N) === 15
            @test convert(DNA,  1) === DNA_A
            @test convert(DNA,  2) === DNA_C
            @test convert(DNA,  4) === DNA_G
            @test convert(DNA,  8) === DNA_T
            @test convert(DNA, 15) === DNA_N

            @test convert(Int, RNA_A) === 1
            @test convert(Int, RNA_C) === 2
            @test convert(Int, RNA_G) === 4
            @test convert(Int, RNA_U) === 8
            @test convert(Int, RNA_N) === 15
            @test convert(RNA,  1) === RNA_A
            @test convert(RNA,  2) === RNA_C
            @test convert(RNA,  4) === RNA_G
            @test convert(RNA,  8) === RNA_U
            @test convert(RNA, 15) === RNA_N
        end
    end

    @testset "iscompatible" begin
        @test  iscompatible(DNA_A, DNA_A)
        @test  iscompatible(DNA_A, DNA_R)
        @test !iscompatible(DNA_C, DNA_A)
        @test !iscompatible(DNA_C, DNA_R)

        for x in alphabet(DNA)
            @test iscompatible(x, DNA_N) == (x != DNA_Gap)
            @test iscompatible(DNA_N, x) == (x != DNA_Gap)
        end

        @test  iscompatible(RNA_A, RNA_A)
        @test  iscompatible(RNA_A, RNA_R)
        @test !iscompatible(RNA_C, RNA_A)
        @test !iscompatible(RNA_C, RNA_R)

        for x in alphabet(RNA)
            @test iscompatible(x, RNA_N) == (x != RNA_Gap)
            @test iscompatible(RNA_N, x) == (x != RNA_Gap)
        end
    end

    @testset "isambiguous" begin
        for nt in alphabet(DNA)
            @test isambiguous(nt) == (nt ∉ (DNA_A, DNA_C, DNA_G, DNA_T, DNA_Gap))
        end
        for nt in alphabet(RNA)
            @test isambiguous(nt) == (nt ∉ (RNA_A, RNA_C, RNA_G, RNA_U, RNA_Gap))
        end
    end

    @testset "ispurine" begin
        for nt in alphabet(DNA)
            @test ispurine(nt) == (nt == DNA_A || nt == DNA_G || nt == DNA_R)
        end
        for nt in alphabet(RNA)
            @test ispurine(nt) == (nt == RNA_A || nt == RNA_G || nt == RNA_R)
        end
    end

    @testset "ispyrimidine" begin
        for nt in alphabet(DNA)
            @test ispyrimidine(nt) == (nt == DNA_T || nt == DNA_C || nt == DNA_Y)
        end
        for nt in alphabet(RNA)
            @test ispyrimidine(nt) == (nt == RNA_U || nt == RNA_C || nt == RNA_Y)
        end
    end

    @testset "complement" begin
        @test complement(DNA_A) === DNA_T
        @test complement(DNA_C) === DNA_G
        @test complement(DNA_G) === DNA_C
        @test complement(DNA_T) === DNA_A
        @test complement(DNA_Gap) === DNA_Gap
        @test complement(DNA_N) === DNA_N

        @test complement(RNA_A) === RNA_U
        @test complement(RNA_C) === RNA_G
        @test complement(RNA_G) === RNA_C
        @test complement(RNA_U) === RNA_A
        @test complement(RNA_Gap) === RNA_Gap
        @test complement(RNA_N) === RNA_N
    end

    @testset "Arithmetic and Order" begin
        @testset "DNA" begin
            @test ~DNA_Gap === DNA_N
            @test ~DNA_N   === DNA_Gap
            @test DNA_A | DNA_C === DNA_M
            @test DNA_A & DNA_C === DNA_Gap
            @test DNA_Gap - DNA_A   === -1
            @test DNA_A   - DNA_Gap === +1
            @test DNA_Gap + 1 === DNA_Gap + 17 === DNA_A
            @test DNA_Gap - 1 === DNA_Gap - 17 === DNA_N
            @test DNA_Gap < DNA_A < DNA_C < DNA_G < DNA_T < DNA_N
            @test !(DNA_A > DNA_G)
            @test gap(DNA) === DNA_Gap
            @test collect(alphabet(DNA)) == sort([
                DNA_A, DNA_C, DNA_G, DNA_T,
                DNA_M, DNA_R, DNA_W, DNA_S,
                DNA_Y, DNA_K, DNA_V, DNA_H,
                DNA_D, DNA_B, DNA_N, DNA_Gap])
        end
        @testset "RNA" begin
            @test ~RNA_Gap === RNA_N
            @test ~RNA_N   === RNA_Gap
            @test RNA_A | RNA_C === RNA_M
            @test RNA_A & RNA_C === RNA_Gap
            @test RNA_Gap - RNA_A   === -1
            @test RNA_A   - RNA_Gap === +1
            @test RNA_Gap + 1 === RNA_Gap + 17 === RNA_A
            @test RNA_Gap - 1 === RNA_Gap - 17 === RNA_N
            @test RNA_Gap < RNA_A < RNA_C < RNA_G < RNA_U < RNA_N
            @test !(RNA_A > RNA_G)
            @test gap(RNA) === RNA_Gap
            @test collect(alphabet(RNA)) == sort([
                RNA_A, RNA_C, RNA_G, RNA_U,
                RNA_M, RNA_R, RNA_W, RNA_S,
                RNA_Y, RNA_K, RNA_V, RNA_H,
                RNA_D, RNA_B, RNA_N, RNA_Gap])
        end
    end

    @testset "Show DNA" begin
        @testset "print" begin
            buf = IOBuffer()
            for nt in [DNA_A, DNA_C, DNA_G, DNA_T, DNA_N, DNA_Gap]
                print(buf, nt)
            end
            @test takebuf_string(buf) == "ACGTN-"
        end

        @testset "show" begin
            buf = IOBuffer()
            for nt in [DNA_A, DNA_C, DNA_G, DNA_T, DNA_N, DNA_Gap]
                show(buf, nt)
                write(buf, ' ')
            end
            @test takebuf_string(buf) == "DNA_A DNA_C DNA_G DNA_T DNA_N DNA_Gap "
        end
    end

    @testset "Show RNA" begin
        @testset "print" begin
            buf = IOBuffer()
            for nt in [RNA_A, RNA_C, RNA_G, RNA_U, RNA_N, RNA_Gap]
                print(buf, nt)
            end
            @test takebuf_string(buf) == "ACGUN-"
        end

        @testset "show" begin
            buf = IOBuffer()
            for nt in [RNA_A, RNA_C, RNA_G, RNA_U, RNA_N, RNA_Gap]
                show(buf, nt)
                write(buf, ' ')
            end
            @test takebuf_string(buf) == "RNA_A RNA_C RNA_G RNA_U RNA_N RNA_Gap "
        end
    end

    @testset "Sets" begin
        @test length(ACGT) == 4
        @test ACGT[1] === DNA_A
        @test ACGT[2] === DNA_C
        @test ACGT[3] === DNA_G
        @test ACGT[4] === DNA_T
        @test collect(ACGT) == [DNA_A, DNA_C, DNA_G, DNA_T]

        @test length(ACGU) == 4
        @test ACGU[1] === RNA_A
        @test ACGU[2] === RNA_C
        @test ACGU[3] === RNA_G
        @test ACGU[4] === RNA_U
        @test collect(ACGU) == [RNA_A, RNA_C, RNA_G, RNA_U]
    end
end

@testset "Aminoacids" begin
    @testset "Arithmetic and Order" begin
        @test AA_A + 1 == AA_R
        @test AA_R + 1 == AA_N
        @test AA_A + 2 == AA_N
        @test AA_A + 28 == AA_A
        @test AA_R - 1 == AA_A
        @test AA_N - 2 == AA_A
        @test AA_A - 28 == AA_A
        @test AA_D - AA_A ==  3
        @test AA_A - AA_D == -3
        @test (AA_A < AA_R < AA_N < AA_V < AA_O < AA_U <
               AA_B < AA_J < AA_Z < AA_X < AA_Term < AA_Gap)
        @test !(AA_J < AA_B)

        @test gap(AminoAcid) === AA_Gap
        @test length(alphabet(AminoAcid)) == 28
        @test AA_A in alphabet(AminoAcid)
        @test AA_I in alphabet(AminoAcid)
        @test AA_U in alphabet(AminoAcid)
    end

    @testset "Range" begin
        @test !(AA_C in AA_Q:AA_H)
        @test   AA_Q in AA_Q:AA_H
        @test   AA_E in AA_Q:AA_H
        @test   AA_G in AA_Q:AA_H
        @test   AA_H in AA_Q:AA_H
        @test !(AA_I in AA_Q:AA_H)

        @test collect(AA_W:AA_V) == [AA_W, AA_Y, AA_V]
    end

    @testset "iscompatible" begin
        @test  iscompatible(AA_A, AA_A)
        @test !iscompatible(AA_A, AA_R)

        for x in alphabet(AminoAcid)
            @test iscompatible(x, AA_B) == (x ∈ (AA_D, AA_N, AA_B, AA_X))
            @test iscompatible(x, AA_J) == (x ∈ (AA_I, AA_L, AA_J, AA_X))
            @test iscompatible(x, AA_Z) == (x ∈ (AA_E, AA_Q, AA_Z, AA_X))
            @test iscompatible(x, AA_X) == (x ∉ (AA_Term, AA_Gap))
        end
    end

    @testset "isambiguous" begin
        for x in alphabet(AminoAcid)
            @test isambiguous(x) == (AA_B <= x <= AA_X)
        end
    end

    @testset "Show amino acid" begin
        @testset "print" begin
            buf = IOBuffer()
            for aa in [AA_A, AA_D, AA_B, AA_X, AA_Term, AA_Gap]
                print(buf, aa)
            end
            @test takebuf_string(buf) == "ADBX*-"
        end

        @testset "show" begin
            buf = IOBuffer()
            for aa in [AA_A, AA_D, AA_B, AA_X, AA_Term, AA_Gap]
                show(buf, aa)
                write(buf, ' ')
            end
            @test takebuf_string(buf) == "AA_A AA_D AA_B AA_X AA_Term AA_Gap "
        end
    end

    @testset "Parsers" begin
        @testset "Valid Cases" begin
            # case-insensitive and ignores spaces
            @test parse(AminoAcid, "a") == AA_A
            @test parse(AminoAcid, "Ala") == AA_A
            @test parse(AminoAcid, "aLa ") == AA_A
            @test parse(AminoAcid, " alA ") == AA_A
            @test parse(AminoAcid, "\tAlA\n") == AA_A
            @test parse(AminoAcid, "x") == AA_X
            @test parse(AminoAcid, "X") == AA_X
            aas = [
                ("A", "ALA", AA_A),
                ("R", "ARG", AA_R),
                ("N", "ASN", AA_N),
                ("D", "ASP", AA_D),
                ("C", "CYS", AA_C),
                ("E", "GLU", AA_E),
                ("Q", "GLN", AA_Q),
                ("G", "GLY", AA_G),
                ("H", "HIS", AA_H),
                ("I", "ILE", AA_I),
                ("L", "LEU", AA_L),
                ("K", "LYS", AA_K),
                ("M", "MET", AA_M),
                ("F", "PHE", AA_F),
                ("P", "PRO", AA_P),
                ("S", "SER", AA_S),
                ("T", "THR", AA_T),
                ("W", "TRP", AA_W),
                ("Y", "TYR", AA_Y),
                ("V", "VAL", AA_V),
                ("O", "PYL", AA_O),
                ("U", "SEC", AA_U),
                ("B", "ASX", AA_B),
                ("J", "XLE", AA_J),
                ("Z", "GLX", AA_Z),
                ("X", "XAA", AA_X),
            ]
            @test length(aas) == 26
            for (one, three, aa) in aas
                @test parse(AminoAcid, one) == aa
                @test parse(AminoAcid, three) == aa
            end
            @test parse(AminoAcid, "*") == AA_Term
            @test parse(AminoAcid, "-") == AA_Gap
        end

        @testset "Invalid Cases" begin
            @test_throws Exception parse(AminoAcid, "")
            @test_throws Exception parse(AminoAcid, "AL")
            @test_throws Exception parse(AminoAcid, "LA")
            @test_throws Exception parse(AminoAcid, "ALAA")
        end
    end
end
