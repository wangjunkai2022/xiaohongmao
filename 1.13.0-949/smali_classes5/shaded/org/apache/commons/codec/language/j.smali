.class public Lshaded/org/apache/commons/codec/language/j;
.super Ljava/lang/Object;
.source "Nysiis.java"

# interfaces
.implements Lh9/h;


# static fields
.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[C

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:C = ' '

.field private static final s:I = 0x6


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x41

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 1
    sput-object v1, Lshaded/org/apache/commons/codec/language/j;->b:[C

    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 2
    fill-array-data v2, :array_0

    sput-object v2, Lshaded/org/apache/commons/codec/language/j;->c:[C

    new-array v2, v0, [C

    const/16 v4, 0x43

    aput-char v4, v2, v3

    .line 3
    sput-object v2, Lshaded/org/apache/commons/codec/language/j;->d:[C

    new-array v2, v1, [C

    .line 4
    fill-array-data v2, :array_1

    sput-object v2, Lshaded/org/apache/commons/codec/language/j;->e:[C

    new-array v2, v0, [C

    const/16 v4, 0x47

    aput-char v4, v2, v3

    .line 5
    sput-object v2, Lshaded/org/apache/commons/codec/language/j;->f:[C

    new-array v2, v0, [C

    const/16 v4, 0x4e

    aput-char v4, v2, v3

    .line 6
    sput-object v2, Lshaded/org/apache/commons/codec/language/j;->g:[C

    new-array v1, v1, [C

    .line 7
    fill-array-data v1, :array_2

    sput-object v1, Lshaded/org/apache/commons/codec/language/j;->h:[C

    new-array v0, v0, [C

    const/16 v1, 0x53

    aput-char v1, v0, v3

    .line 8
    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->i:[C

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 9
    fill-array-data v0, :array_3

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->j:[C

    const-string v0, "^MAC"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->k:Ljava/util/regex/Pattern;

    const-string v0, "^KN"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->l:Ljava/util/regex/Pattern;

    const-string v0, "^K"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->m:Ljava/util/regex/Pattern;

    const-string v0, "^(PH|PF)"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->n:Ljava/util/regex/Pattern;

    const-string v0, "^SCH"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->o:Ljava/util/regex/Pattern;

    const-string v0, "(EE|IE)$"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->p:Ljava/util/regex/Pattern;

    const-string v0, "(DT|RT|RD|NT|ND)$"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lshaded/org/apache/commons/codec/language/j;->q:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x46s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x4es
        0x4es
    .end array-data

    :array_3
    .array-data 2
        0x53s
        0x53s
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lshaded/org/apache/commons/codec/language/j;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lshaded/org/apache/commons/codec/language/j;->a:Z

    return-void
.end method

.method private static d(C)Z
    .locals 1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    const/16 v0, 0x45

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(CCCC)[C
    .locals 2

    const/16 v0, 0x45

    if-ne p1, v0, :cond_0

    const/16 v0, 0x56

    if-ne p2, v0, :cond_0

    .line 1
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->c:[C

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lshaded/org/apache/commons/codec/language/j;->d(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->b:[C

    return-object p0

    :cond_1
    const/16 v0, 0x51

    if-ne p1, v0, :cond_2

    .line 4
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->f:[C

    return-object p0

    :cond_2
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 5
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->i:[C

    return-object p0

    :cond_3
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_4

    .line 6
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->g:[C

    return-object p0

    :cond_4
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_6

    const/16 p0, 0x4e

    if-ne p2, p0, :cond_5

    .line 7
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->h:[C

    return-object p0

    .line 8
    :cond_5
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->d:[C

    return-object p0

    :cond_6
    const/16 v0, 0x53

    const/16 v1, 0x48

    if-ne p1, v0, :cond_7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_7

    if-ne p3, v1, :cond_7

    .line 9
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->j:[C

    return-object p0

    :cond_7
    const/16 p3, 0x50

    if-ne p1, p3, :cond_8

    if-ne p2, v1, :cond_8

    .line 10
    sget-object p0, Lshaded/org/apache/commons/codec/language/j;->e:[C

    return-object p0

    :cond_8
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v1, :cond_a

    .line 11
    invoke-static {p0}, Lshaded/org/apache/commons/codec/language/j;->d(C)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p2}, Lshaded/org/apache/commons/codec/language/j;->d(C)Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    new-array p1, v0, [C

    aput-char p0, p1, p3

    return-object p1

    :cond_a
    const/16 p2, 0x57

    if-ne p1, p2, :cond_b

    .line 12
    invoke-static {p0}, Lshaded/org/apache/commons/codec/language/j;->d(C)Z

    move-result p2

    if-eqz p2, :cond_b

    new-array p1, v0, [C

    aput-char p0, p1, p3

    return-object p1

    :cond_b
    new-array p0, v0, [C

    aput-char p1, p0, p3

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lshaded/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lshaded/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Nysiis encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lshaded/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lshaded/org/apache/commons/codec/language/j;->a:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {p1}, Lshaded/org/apache/commons/codec/language/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "MCC"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "NN"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "FF"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "SSS"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v0, Lshaded/org/apache/commons/codec/language/j;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 13
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v2, :cond_5

    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x20

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 14
    aget-char v5, p1, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x20

    :goto_1
    add-int/lit8 v7, v2, -0x2

    if-ge v4, v7, :cond_3

    add-int/lit8 v6, v4, 0x2

    .line 15
    aget-char v6, p1, v6

    :cond_3
    add-int/lit8 v7, v4, -0x1

    .line 16
    aget-char v8, p1, v7

    aget-char v9, p1, v4

    invoke-static {v8, v9, v5, v6}, Lshaded/org/apache/commons/codec/language/j;->g(CCCC)[C

    move-result-object v5

    .line 17
    array-length v6, v5

    invoke-static {v5, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    aget-char v5, p1, v4

    aget-char v6, p1, v7

    if-eq v5, v6, :cond_4

    .line 19
    aget-char v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v3, :cond_8

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v2, 0x53

    if-ne p1, v2, :cond_6

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    .line 24
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x41

    const/4 v5, 0x2

    if-le v2, v5, :cond_7

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_7

    const/16 v2, 0x59

    if-ne p1, v2, :cond_7

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    if-ne p1, v4, :cond_8

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 28
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method
