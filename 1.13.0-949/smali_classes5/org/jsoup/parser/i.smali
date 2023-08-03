.class final Lorg/jsoup/parser/i;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field static final s:C = '\ufffd'

.field private static final t:[C

.field static final u:I = 0x80

.field static final v:[I


# instance fields
.field private final a:Lorg/jsoup/parser/a;

.field private final b:Lorg/jsoup/parser/ParseErrorList;

.field private c:Lorg/jsoup/parser/j;

.field private d:Lorg/jsoup/parser/Token;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/StringBuilder;

.field h:Ljava/lang/StringBuilder;

.field i:Lorg/jsoup/parser/Token$i;

.field j:Lorg/jsoup/parser/Token$h;

.field k:Lorg/jsoup/parser/Token$g;

.field l:Lorg/jsoup/parser/Token$c;

.field m:Lorg/jsoup/parser/Token$e;

.field n:Lorg/jsoup/parser/Token$d;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final q:[I

.field private final r:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/i;->t:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lorg/jsoup/parser/i;->v:[I

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    iput-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/parser/j;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/parser/i;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$h;

    .line 8
    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->k:Lorg/jsoup/parser/Token$g;

    .line 9
    new-instance v0, Lorg/jsoup/parser/Token$c;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->l:Lorg/jsoup/parser/Token$c;

    .line 10
    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->m:Lorg/jsoup/parser/Token$e;

    .line 11
    new-instance v0, Lorg/jsoup/parser/Token$d;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lorg/jsoup/parser/i;->q:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lorg/jsoup/parser/i;->r:[I

    .line 14
    iput-object p1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    .line 15
    iput-object p2, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid character reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method A()Lorg/jsoup/parser/Token;
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/i;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/parser/j;

    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/j;->m(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7
    iput-object v2, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lorg/jsoup/parser/i;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lorg/jsoup/parser/i;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v0

    .line 11
    iput-object v2, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/parser/i;->e:Z

    .line 13
    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Lorg/jsoup/parser/Token;

    return-object v0
.end method

.method B(Lorg/jsoup/parser/j;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/parser/j;

    return-void
.end method

.method C(Z)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1}, Lorg/jsoup/parser/a;->w()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/a;->o(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/a;->E(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1}, Lorg/jsoup/parser/a;->f()C

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, p1}, Lorg/jsoup/parser/i;->e(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8
    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 9
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 10
    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/jsoup/parser/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->a()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/parser/j;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/i;->p:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->p:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/Character;Z)[I
    .locals 7
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->u()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    sget-object v0, Lorg/jsoup/parser/i;->t:[C

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/a;->H([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/i;->q:[I

    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->B()V

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/a;->C(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ";"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 7
    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->D(Ljava/lang/String;)Z

    move-result p2

    .line 8
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "numeric reference with no numerals"

    .line 10
    invoke-direct {p0, p2, p1}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->R()V

    return-object v1

    .line 12
    :cond_4
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1}, Lorg/jsoup/parser/a;->V()V

    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/a;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v2, "missing semicolon on [&#%s]"

    .line 14
    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_1

    :cond_6
    const/16 p2, 0xa

    :goto_1
    const/4 v1, -0x1

    .line 15
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, -0x1

    :goto_2
    if-eq p2, v1, :cond_a

    const v0, 0xd800

    if-lt p2, v0, :cond_7

    const v0, 0xdfff

    if-le p2, v0, :cond_a

    :cond_7
    const v0, 0x10ffff

    if-le p2, v0, :cond_8

    goto :goto_3

    :cond_8
    const/16 v0, 0x80

    if-lt p2, v0, :cond_9

    .line 16
    sget-object v1, Lorg/jsoup/parser/i;->v:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_9

    new-array v0, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "character [%s] is not a valid unicode code point"

    invoke-direct {p0, v2, v0}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x80

    .line 18
    aget p2, v1, p2

    .line 19
    :cond_9
    aput p2, p1, v4

    goto :goto_4

    :cond_a
    :goto_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "character [%s] outside of valid range"

    invoke-direct {p0, p2, v0}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0xfffd

    .line 21
    aput p2, p1, v4

    :goto_4
    return-object p1

    .line 22
    :cond_b
    iget-object v0, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v5, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/a;->E(C)Z

    move-result v5

    .line 24
    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-nez v6, :cond_f

    .line 25
    iget-object p1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->R()V

    if-eqz v5, :cond_e

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "invalid named reference [%s]"

    .line 26
    invoke-direct {p0, p2, p1}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    return-object v1

    :cond_f
    if-eqz p2, :cond_11

    .line 27
    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->L()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->J()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/a;->G([C)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 28
    :cond_10
    iget-object p1, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->R()V

    return-object v1

    .line 29
    :cond_11
    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->V()V

    .line 30
    iget-object p2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->C(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v1, "missing semicolon on [&%s]"

    .line 31
    invoke-direct {p0, v1, p2}, Lorg/jsoup/parser/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_12
    iget-object p2, p0, Lorg/jsoup/parser/i;->r:[I

    invoke-static {v0, p2}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v3, :cond_13

    .line 33
    iget-object p2, p0, Lorg/jsoup/parser/i;->r:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_13
    const/4 p1, 0x2

    if-ne p2, p1, :cond_14

    .line 34
    iget-object p1, p0, Lorg/jsoup/parser/i;->r:[I

    return-object p1

    .line 35
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lorg/jsoup/parser/i;->r:[I

    return-object p1

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$d;->m()Lorg/jsoup/parser/Token;

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$d;->d:Z

    return-void
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$d;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method i(Z)Lorg/jsoup/parser/Token$i;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/i;->j:Lorg/jsoup/parser/Token$h;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$h;->H()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/i;->k:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->H()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    return-object p1
.end method

.method j()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method l(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method n(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method o(Lorg/jsoup/parser/Token;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/i;->e:Z

    invoke-static {v0}, Lorg/jsoup/helper/d;->b(Z)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/i;->d:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/parser/i;->e:Z

    .line 4
    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_0

    .line 5
    check-cast p1, Lorg/jsoup/parser/Token$h;

    .line 6
    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/i;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/jsoup/parser/i;->p:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_1

    .line 9
    check-cast p1, Lorg/jsoup/parser/Token$g;

    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Attributes incorrectly present on end tag [/%s]"

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/i;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method p([C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    return-void
.end method

.method q([I)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    return-void
.end method

.method r()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->o(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method s()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->o(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->z()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/i;->o(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method u(Lorg/jsoup/parser/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method v(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    invoke-direct {v1, v2, p1, p2}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method x(Lorg/jsoup/parser/j;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->u()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method y()Lorg/jsoup/parser/j;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/parser/j;

    return-object v0
.end method

.method z()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/i;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
