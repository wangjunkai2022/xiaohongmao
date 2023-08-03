.class public Lshaded/org/apache/commons/codec/language/e;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lh9/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshaded/org/apache/commons/codec/language/e$b;,
        Lshaded/org/apache/commons/codec/language/e$c;,
        Lshaded/org/apache/commons/codec/language/e$a;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lshaded/org/apache/commons/codec/language/e;->a:[C

    const/4 v1, 0x3

    new-array v2, v1, [C

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lshaded/org/apache/commons/codec/language/e;->b:[C

    const/4 v2, 0x4

    new-array v3, v2, [C

    .line 3
    fill-array-data v3, :array_2

    sput-object v3, Lshaded/org/apache/commons/codec/language/e;->c:[C

    new-array v3, v1, [C

    .line 4
    fill-array-data v3, :array_3

    sput-object v3, Lshaded/org/apache/commons/codec/language/e;->d:[C

    new-array v3, v1, [C

    .line 5
    fill-array-data v3, :array_4

    sput-object v3, Lshaded/org/apache/commons/codec/language/e;->e:[C

    const/16 v3, 0x9

    new-array v3, v3, [C

    .line 6
    fill-array-data v3, :array_5

    sput-object v3, Lshaded/org/apache/commons/codec/language/e;->f:[C

    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 7
    fill-array-data v4, :array_6

    sput-object v4, Lshaded/org/apache/commons/codec/language/e;->g:[C

    new-array v0, v0, [C

    .line 8
    fill-array-data v0, :array_7

    sput-object v0, Lshaded/org/apache/commons/codec/language/e;->h:[C

    new-array v0, v1, [C

    .line 9
    fill-array-data v0, :array_8

    sput-object v0, Lshaded/org/apache/commons/codec/language/e;->i:[C

    new-array v0, v2, [[C

    new-array v2, v3, [C

    .line 10
    fill-array-data v2, :array_9

    const/4 v4, 0x0

    aput-object v2, v0, v4

    new-array v2, v3, [C

    fill-array-data v2, :array_a

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v3, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v3

    new-array v2, v3, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lshaded/org/apache/commons/codec/language/e;->j:[[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x53s
        0x43s
        0x5as
    .end array-data

    nop

    :array_2
    .array-data 2
        0x57s
        0x46s
        0x50s
        0x56s
    .end array-data

    :array_3
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x53s
        0x5as
    .end array-data

    :array_7
    .array-data 2
        0x41s
        0x48s
        0x4fs
        0x55s
        0x4bs
        0x51s
        0x58s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x54s
        0x44s
        0x58s
    .end array-data

    nop

    :array_9
    .array-data 2
        0xc4s
        0x41s
    .end array-data

    :array_a
    .array-data 2
        0xdcs
        0x55s
    .end array-data

    :array_b
    .array-data 2
        0xd6s
        0x4fs
    .end array-data

    :array_c
    .array-data 2
        0xdfs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b([CC)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4
    aget-char v2, p1, v1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    .line 5
    sget-object v2, Lshaded/org/apache/commons/codec/language/e;->j:[[C

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 6
    aget-char v6, p1, v1

    aget-char v7, v5, v0

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    .line 7
    aget-char v2, v5, v2

    aput-char v2, p1, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lshaded/org/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\'s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lshaded/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lshaded/org/apache/commons/codec/language/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lshaded/org/apache/commons/codec/language/e$c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p0, v1}, Lshaded/org/apache/commons/codec/language/e$c;-><init>(Lshaded/org/apache/commons/codec/language/e;I)V

    .line 3
    new-instance v1, Lshaded/org/apache/commons/codec/language/e$b;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lshaded/org/apache/commons/codec/language/e$b;-><init>(Lshaded/org/apache/commons/codec/language/e;[C)V

    .line 4
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/e$a;->b()I

    move-result p1

    const/16 v2, 0x2f

    const/16 v3, 0x2d

    const/16 v4, 0x2f

    const/16 v5, 0x2d

    :goto_0
    if-lez p1, :cond_1a

    .line 5
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/e$b;->f()C

    move-result p1

    .line 6
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/e$a;->b()I

    move-result v6

    if-lez v6, :cond_1

    .line 7
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/e$b;->d()C

    move-result v7

    goto :goto_1

    :cond_1
    const/16 v7, 0x2d

    .line 8
    :goto_1
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->a:[C

    invoke-static {v8, p1}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v8

    const/16 v9, 0x30

    const/16 v10, 0x34

    const/16 v11, 0x38

    if-eqz v8, :cond_2

    const/16 v10, 0x30

    goto/16 :goto_6

    :cond_2
    const/16 v8, 0x48

    if-eq p1, v8, :cond_14

    const/16 v12, 0x41

    if-lt p1, v12, :cond_14

    const/16 v12, 0x5a

    if-le p1, v12, :cond_3

    goto/16 :goto_5

    :cond_3
    const/16 v13, 0x42

    if-eq p1, v13, :cond_13

    const/16 v13, 0x50

    if-ne p1, v13, :cond_4

    if-eq v7, v8, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 v8, 0x44

    if-eq p1, v8, :cond_5

    const/16 v8, 0x54

    if-ne p1, v8, :cond_6

    .line 9
    :cond_5
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->b:[C

    invoke-static {v8, v7}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v10, 0x32

    goto/16 :goto_6

    .line 10
    :cond_6
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->c:[C

    invoke-static {v8, p1}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v10, 0x33

    goto/16 :goto_6

    .line 11
    :cond_7
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->d:[C

    invoke-static {v8, p1}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_6

    :cond_8
    const/16 v8, 0x58

    const/16 v13, 0x53

    if-ne p1, v8, :cond_9

    .line 12
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->e:[C

    invoke-static {v8, v5}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v8

    if-nez v8, :cond_9

    .line 13
    invoke-virtual {v1, v13}, Lshaded/org/apache/commons/codec/language/e$b;->c(C)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_9
    if-eq p1, v13, :cond_12

    if-ne p1, v12, :cond_a

    goto :goto_3

    :cond_a
    const/16 v8, 0x43

    if-ne p1, v8, :cond_c

    if-ne v4, v2, :cond_b

    .line 14
    sget-object v5, Lshaded/org/apache/commons/codec/language/e;->f:[C

    invoke-static {v5, v7}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_6

    .line 15
    :cond_b
    sget-object v8, Lshaded/org/apache/commons/codec/language/e;->g:[C

    invoke-static {v8, v5}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v5

    if-nez v5, :cond_12

    sget-object v5, Lshaded/org/apache/commons/codec/language/e;->h:[C

    invoke-static {v5, v7}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_3

    .line 16
    :cond_c
    sget-object v5, Lshaded/org/apache/commons/codec/language/e;->i:[C

    invoke-static {v5, p1}, Lshaded/org/apache/commons/codec/language/e;->b([CC)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    const/16 v5, 0x52

    if-ne p1, v5, :cond_e

    const/16 v10, 0x37

    goto :goto_6

    :cond_e
    const/16 v5, 0x4c

    if-ne p1, v5, :cond_f

    const/16 v10, 0x35

    goto :goto_6

    :cond_f
    const/16 v5, 0x4d

    if-eq p1, v5, :cond_11

    const/16 v5, 0x4e

    if-ne p1, v5, :cond_10

    goto :goto_2

    :cond_10
    move v10, p1

    goto :goto_6

    :cond_11
    :goto_2
    const/16 v10, 0x36

    goto :goto_6

    :cond_12
    :goto_3
    const/16 v10, 0x38

    goto :goto_6

    :cond_13
    :goto_4
    const/16 v10, 0x31

    goto :goto_6

    :cond_14
    :goto_5
    if-ne v4, v2, :cond_15

    move p1, v6

    goto/16 :goto_0

    :cond_15
    const/16 v10, 0x2d

    :cond_16
    :goto_6
    if-eq v10, v3, :cond_19

    if-eq v4, v10, :cond_17

    if-ne v10, v9, :cond_18

    if-eq v4, v2, :cond_18

    :cond_17
    if-lt v10, v9, :cond_18

    if-le v10, v11, :cond_19

    .line 17
    :cond_18
    invoke-virtual {v0, v10}, Lshaded/org/apache/commons/codec/language/e$c;->c(C)V

    :cond_19
    move v5, p1

    move p1, v6

    move v4, v10

    goto/16 :goto_0

    .line 18
    :cond_1a
    invoke-virtual {v0}, Lshaded/org/apache/commons/codec/language/e$a;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lshaded/org/apache/commons/codec/language/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
