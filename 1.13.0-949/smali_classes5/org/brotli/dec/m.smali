.class final Lorg/brotli/dec/m;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field static final d:[Lorg/brotli/dec/m;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x79

    new-array v0, v0, [Lorg/brotli/dec/m;

    new-instance v1, Lorg/brotli/dec/m;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/brotli/dec/m;

    const-string v4, " "

    invoke-direct {v1, v2, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v7, 0xc

    invoke-direct {v1, v2, v7, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v8, 0x3

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v9, 0xa

    invoke-direct {v1, v2, v9, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x4

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const-string v11, " the "

    invoke-direct {v1, v2, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v12, 0x5

    aput-object v1, v0, v12

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v13, 0x6

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, "s "

    invoke-direct {v1, v13, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v13, 0x7

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, " of "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x8

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x9

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, " and "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v13, 0xd

    invoke-direct {v1, v2, v13, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0xb

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v5, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/brotli/dec/m;

    const-string v7, ", "

    invoke-direct {v1, v7, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0xd

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v3, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0xe

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v9, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0xf

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    const-string v14, " in "

    invoke-direct {v1, v2, v3, v14}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0x10

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    const-string v14, " to "

    invoke-direct {v1, v2, v3, v14}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0x11

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    const-string v14, "e "

    invoke-direct {v1, v14, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0x12

    aput-object v1, v0, v14

    new-instance v1, Lorg/brotli/dec/m;

    const-string v14, "\""

    invoke-direct {v1, v2, v3, v14}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v15, 0x13

    aput-object v1, v0, v15

    new-instance v1, Lorg/brotli/dec/m;

    const-string v15, "."

    invoke-direct {v1, v2, v3, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x14

    aput-object v1, v0, v16

    new-instance v1, Lorg/brotli/dec/m;

    const-string v12, "\">"

    invoke-direct {v1, v2, v3, v12}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v17, 0x15

    aput-object v1, v0, v17

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, "\n"

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x17

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, "]"

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x18

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, " for "

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v5, 0xe

    invoke-direct {v1, v2, v5, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v6, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, " a "

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, " that "

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v9, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    const-string v5, ". "

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x1f

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v15, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x20

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x21

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xf

    invoke-direct {v1, v2, v6, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x22

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const-string v6, " with "

    invoke-direct {v1, v2, v3, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x23

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const-string v6, "\'"

    invoke-direct {v1, v2, v3, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x24

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, " from "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x25

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, " by "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x26

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x27

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v8, 0x11

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x28

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v11, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x29

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v10, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2a

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, ". The "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2b

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v13, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2c

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, " on "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2d

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, " as "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2e

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, " is "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x2f

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x30

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, "ing "

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x31

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, "\n\t"

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x32

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, ":"

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x33

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x34

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, "ed "

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x35

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x36

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x37

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x38

    aput-object v1, v0, v8

    new-instance v1, Lorg/brotli/dec/m;

    const-string v8, "("

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x39

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3a

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v10, 0x8

    invoke-direct {v1, v2, v10, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3b

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const-string v10, " at "

    invoke-direct {v1, v2, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3c

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const-string v10, "ly "

    invoke-direct {v1, v2, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3d

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const-string v10, " of "

    invoke-direct {v1, v11, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3e

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const/4 v10, 0x5

    invoke-direct {v1, v2, v10, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x3f

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v10, 0x9

    invoke-direct {v1, v2, v10, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x40

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v9, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x41

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v14}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x42

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v15, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x43

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v13, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x44

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v12}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x45

    aput-object v1, v0, v10

    new-instance v1, Lorg/brotli/dec/m;

    const-string v10, "=\""

    invoke-direct {v1, v2, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x46

    aput-object v1, v0, v16

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x47

    aput-object v1, v0, v16

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, ".com/"

    invoke-direct {v1, v13, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x48

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, " of the "

    invoke-direct {v1, v11, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x49

    aput-object v1, v0, v11

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x4a

    aput-object v1, v0, v11

    new-instance v1, Lorg/brotli/dec/m;

    const-string v11, ". This "

    invoke-direct {v1, v2, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x4b

    aput-object v1, v0, v11

    new-instance v1, Lorg/brotli/dec/m;

    const-string v11, ","

    invoke-direct {v1, v2, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x4c

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v15, v3, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x4d

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x4e

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v9, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x4f

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, " not "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x50

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x51

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, "er "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x52

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v13, 0xb

    invoke-direct {v1, v4, v13, v4}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x53

    aput-object v1, v0, v16

    new-instance v1, Lorg/brotli/dec/m;

    const-string v9, "al "

    invoke-direct {v1, v2, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x54

    aput-object v1, v0, v9

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v13, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x55

    aput-object v1, v0, v9

    new-instance v1, Lorg/brotli/dec/m;

    const-string v9, "=\'"

    invoke-direct {v1, v2, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v16, 0x56

    aput-object v1, v0, v16

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v13, v14}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x57

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v13, 0xa

    invoke-direct {v1, v2, v13, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x58

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x59

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, "ful "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x5a

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v13, 0xa

    invoke-direct {v1, v4, v13, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x5b

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, "ive "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x5c

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const-string v13, "less "

    invoke-direct {v1, v2, v3, v13}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x5d

    aput-object v1, v0, v13

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v13, 0xb

    invoke-direct {v1, v2, v13, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x5e

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const-string v6, "est "

    invoke-direct {v1, v2, v3, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x5f

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xa

    invoke-direct {v1, v4, v6, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x60

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xb

    invoke-direct {v1, v2, v6, v12}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x61

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x62

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xa

    invoke-direct {v1, v2, v6, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x63

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const-string v6, "ize "

    invoke-direct {v1, v2, v3, v6}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x64

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xb

    invoke-direct {v1, v2, v6, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x65

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const-string v6, "\u00c2\u00a0"

    invoke-direct {v1, v6, v3, v2}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x66

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x67

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xa

    invoke-direct {v1, v2, v6, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x68

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v6, 0xb

    invoke-direct {v1, v2, v6, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v12, 0x69

    aput-object v1, v0, v12

    new-instance v1, Lorg/brotli/dec/m;

    const-string v12, "ous "

    invoke-direct {v1, v2, v3, v12}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x6a

    aput-object v1, v0, v3

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v6, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x6b

    aput-object v1, v0, v3

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x6c

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x6d

    aput-object v1, v0, v3

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v3, 0xb

    invoke-direct {v1, v4, v3, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x6e

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v7}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x6f

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v3, v11}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x70

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v3, v8}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x71

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x72

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v15}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x73

    aput-object v1, v0, v6

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v2, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x74

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v5}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x75

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/m;

    const/16 v2, 0xa

    invoke-direct {v1, v4, v2, v10}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x76

    aput-object v1, v0, v5

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v3, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x77

    aput-object v1, v0, v3

    new-instance v1, Lorg/brotli/dec/m;

    invoke-direct {v1, v4, v2, v9}, Lorg/brotli/dec/m;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    sput-object v0, Lorg/brotli/dec/m;->d:[Lorg/brotli/dec/m;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/brotli/dec/m;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/m;->a:[B

    .line 3
    iput p2, p0, Lorg/brotli/dec/m;->b:I

    .line 4
    invoke-static {p3}, Lorg/brotli/dec/m;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/m;->c:[B

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static b([BI[BIILorg/brotli/dec/m;)I
    .locals 7

    .line 1
    iget-object v0, p5, Lorg/brotli/dec/m;->a:[B

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    .line 3
    aget-byte v3, v0, v3

    aput-byte v3, p0, v4

    move v4, v5

    move v3, v6

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p5, Lorg/brotli/dec/m;->b:I

    .line 5
    invoke-static {v0}, Lorg/brotli/dec/o;->a(I)I

    move-result v1

    if-le v1, p4, :cond_1

    move v1, p4

    :cond_1
    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    .line 6
    invoke-static {v0}, Lorg/brotli/dec/o;->b(I)I

    move-result v1

    sub-int/2addr p4, v1

    move v1, p4

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    .line 7
    aget-byte p3, p2, p3

    aput-byte p3, p0, v4

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    move p3, v5

    goto :goto_1

    :cond_2
    const/16 p2, 0xb

    const/16 p3, 0xa

    if-eq v0, p2, :cond_3

    if-ne v0, p3, :cond_8

    :cond_3
    sub-int p2, v4, p4

    if-ne v0, p3, :cond_4

    const/4 p4, 0x1

    :cond_4
    :goto_2
    if-lez p4, :cond_8

    .line 8
    aget-byte p3, p0, p2

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0xc0

    if-ge p3, v0, :cond_6

    const/16 v0, 0x61

    if-lt p3, v0, :cond_5

    const/16 v0, 0x7a

    if-gt p3, v0, :cond_5

    .line 9
    aget-byte p3, p0, p2

    xor-int/lit8 p3, p3, 0x20

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    const/16 v0, 0xe0

    if-ge p3, v0, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 10
    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p4, p4, -0x2

    goto :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 p4, p4, -0x3

    goto :goto_2

    .line 12
    :cond_8
    iget-object p2, p5, Lorg/brotli/dec/m;->c:[B

    .line 13
    array-length p3, p2

    :goto_3
    if-ge v2, p3, :cond_9

    add-int/lit8 p4, v4, 0x1

    add-int/lit8 p5, v2, 0x1

    .line 14
    aget-byte v0, p2, v2

    aput-byte v0, p0, v4

    move v4, p4

    move v2, p5

    goto :goto_3

    :cond_9
    sub-int/2addr v4, p1

    return v4
.end method
