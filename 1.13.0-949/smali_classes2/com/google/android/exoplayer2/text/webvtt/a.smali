.class final Lcom/google/android/exoplayer2/text/webvtt/a;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final c:Ljava/lang/String; = "CssParser"

.field private static final d:Ljava/lang/String; = "{"

.field private static final e:Ljava/lang/String; = "}"

.field private static final f:Ljava/lang/String; = "color"

.field private static final g:Ljava/lang/String; = "background-color"

.field private static final h:Ljava/lang/String; = "font-family"

.field private static final i:Ljava/lang/String; = "font-weight"

.field private static final j:Ljava/lang/String; = "ruby-position"

.field private static final k:Ljava/lang/String; = "over"

.field private static final l:Ljava/lang/String; = "under"

.field private static final m:Ljava/lang/String; = "text-combine-upright"

.field private static final n:Ljava/lang/String; = "all"

.field private static final o:Ljava/lang/String; = "digits"

.field private static final p:Ljava/lang/String; = "text-decoration"

.field private static final q:Ljava/lang/String; = "bold"

.field private static final r:Ljava/lang/String; = "underline"

.field private static final s:Ljava/lang/String; = "font-style"

.field private static final t:Ljava/lang/String; = "italic"

.field private static final u:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/h0;

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/a;->u:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/text/webvtt/d;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 3
    sget-object v4, Lcom/google/android/exoplayer2/text/webvtt/a;->u:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/d;->A(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v0, "\\."

    .line 7
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/z0;->l1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 8
    aget-object v0, p2, v2

    const/16 v4, 0x23

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 10
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/d;->z(Ljava/lang/String;)V

    add-int/2addr v4, v3

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/webvtt/d;->y(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/webvtt/d;->z(Ljava/lang/String;)V

    .line 13
    :goto_0
    array-length v0, p2

    if-le v0, v3, :cond_4

    .line 14
    array-length v0, p2

    invoke-static {p2, v3, v0}, Lcom/google/android/exoplayer2/util/z0;->U0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->x([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/util/h0;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 5
    aget-byte v0, v2, v0

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 6
    aget-byte v0, v2, v3

    int-to-char v0, v0

    if-ne v0, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/h0;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/text/webvtt/a;->j(Lcom/google/android/exoplayer2/util/h0;I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    return v0
.end method

.method private static e(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v3

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->m(Lcom/google/android/exoplayer2/util/h0;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/a;->e(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p0

    int-to-char p0, p0

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v2

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v4, "}"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->m(Lcom/google/android/exoplayer2/util/h0;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/h0;->D(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::cue"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 6
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const-string v3, "{"

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const-string p0, ""

    return-object p0

    :cond_3
    const-string v0, "("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->k(Lcom/google/android/exoplayer2/util/h0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 11
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    return-object v0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/text/webvtt/d;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->m(Lcom/google/android/exoplayer2/util/h0;)V

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/a;->e(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->m(Lcom/google/android/exoplayer2/util/h0;)V

    .line 6
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/a;->g(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v1

    .line 9
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ";"

    .line 10
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "}"

    .line 11
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    :goto_0
    const-string p0, "color"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/f;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/webvtt/d;->q(I)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto/16 :goto_2

    :cond_4
    const-string p0, "background-color"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 16
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/f;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/webvtt/d;->n(I)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto/16 :goto_2

    :cond_5
    const-string p0, "ruby-position"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_7

    const-string p0, "over"

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->w(I)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto/16 :goto_2

    :cond_6
    const-string p0, "under"

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    .line 21
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/webvtt/d;->w(I)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto :goto_2

    :cond_7
    const-string p0, "text-combine-upright"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "all"

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "digits"

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    :cond_9
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->p(Z)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto :goto_2

    :cond_a
    const-string p0, "text-decoration"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "underline"

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->B(Z)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto :goto_2

    :cond_b
    const-string p0, "font-family"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 28
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/d;->r(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto :goto_2

    :cond_c
    const-string p0, "font-weight"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "bold"

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->o(Z)Lcom/google/android/exoplayer2/text/webvtt/d;

    goto :goto_2

    :cond_d
    const-string p0, "font-style"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "italic"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/d;->u(Z)Lcom/google/android/exoplayer2/text/webvtt/d;

    :cond_e
    :goto_2
    return-void
.end method

.method private static j(Lcom/google/android/exoplayer2/util/h0;I)C
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p0

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method private static k(Lcom/google/android/exoplayer2/util/h0;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->D(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static l(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method static m(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->c(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/a;->b(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/exoplayer2/util/h0;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h0;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/webvtt/a;->l(Lcom/google/android/exoplayer2/util/h0;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/text/webvtt/a;->h(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    .line 9
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/text/webvtt/d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/webvtt/d;-><init>()V

    .line 10
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/text/webvtt/a;->a(Lcom/google/android/exoplayer2/text/webvtt/d;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const-string v4, "}"

    if-nez v3, :cond_5

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/text/webvtt/a;->f(Lcom/google/android/exoplayer2/util/h0;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    .line 14
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->a:Lcom/google/android/exoplayer2/util/h0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v5}, Lcom/google/android/exoplayer2/text/webvtt/a;->i(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/text/webvtt/d;Ljava/lang/StringBuilder;)V

    :cond_4
    move-object v0, v3

    move v3, v4

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object p1
.end method
