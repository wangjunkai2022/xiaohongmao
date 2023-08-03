.class public abstract Lcom/google/common/base/d;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/d$j;,
        Lcom/google/common/base/d$k;,
        Lcom/google/common/base/d$d;,
        Lcom/google/common/base/d$n;,
        Lcom/google/common/base/d$o;,
        Lcom/google/common/base/d$m;,
        Lcom/google/common/base/d$z;,
        Lcom/google/common/base/d$b;,
        Lcom/google/common/base/d$w;,
        Lcom/google/common/base/d$b0;,
        Lcom/google/common/base/d$l;,
        Lcom/google/common/base/d$q;,
        Lcom/google/common/base/d$t;,
        Lcom/google/common/base/d$u;,
        Lcom/google/common/base/d$s;,
        Lcom/google/common/base/d$r;,
        Lcom/google/common/base/d$p;,
        Lcom/google/common/base/d$h;,
        Lcom/google/common/base/d$a0;,
        Lcom/google/common/base/d$e;,
        Lcom/google/common/base/d$g;,
        Lcom/google/common/base/d$c0;,
        Lcom/google/common/base/d$y;,
        Lcom/google/common/base/d$c;,
        Lcom/google/common/base/d$f;,
        Lcom/google/common/base/d$x;,
        Lcom/google/common/base/d$v;,
        Lcom/google/common/base/d$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final a:I = 0x10000


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static G()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$y;->c:Lcom/google/common/base/d$y;

    return-object v0
.end method

.method public static H(Ljava/lang/CharSequence;)Lcom/google/common/base/d;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/d;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/d;->F()Lcom/google/common/base/d;

    move-result-object p0

    return-object p0
.end method

.method private static L(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/d;
    .locals 2
    .annotation build Lh3/c;
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/common/base/d;->t(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/base/e0;->a0(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/common/base/d$f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/d$f;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/d$a;)V

    :goto_0
    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    add-int/lit8 p2, p0, 0x1

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    int-to-char p1, p1

    .line 5
    invoke-static {p0, p1}, Lcom/google/common/base/d;->r(CC)Lcom/google/common/base/d$n;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lcom/google/common/base/d;->q(C)Lcom/google/common/base/d;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/common/base/d;->G()Lcom/google/common/base/d;

    move-result-object p0

    return-object p0
.end method

.method private static R(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    .line 2
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    int-to-char p0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static S()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$b0;->e:Lcom/google/common/base/d$b0;

    return-object v0
.end method

.method public static X()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$c0;->f:Lcom/google/common/base/d$c0;

    return-object v0
.end method

.method static synthetic a(C)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/d;->R(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$c;->c:Lcom/google/common/base/d$c;

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/google/common/base/d;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/base/d$d;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$d;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/base/d;->r(CC)Lcom/google/common/base/d$n;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/d;->q(C)Lcom/google/common/base/d;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/common/base/d;->G()Lcom/google/common/base/d;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$e;->c:Lcom/google/common/base/d$e;

    return-object v0
.end method

.method public static g()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$g;->b:Lcom/google/common/base/d;

    return-object v0
.end method

.method public static j()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$h;->f:Lcom/google/common/base/d$h;

    return-object v0
.end method

.method private k(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p6, :cond_1

    .line 3
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static l(Lcom/google/common/base/b0;)Lcom/google/common/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/d;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/base/d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/base/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/base/d$j;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$j;-><init>(Lcom/google/common/base/b0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static m(CC)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/d$k;-><init>(CC)V

    return-object v0
.end method

.method public static p()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$l;->g:Lcom/google/common/base/d$l;

    return-object v0
.end method

.method public static q(C)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$m;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$m;-><init>(C)V

    return-object v0
.end method

.method private static r(CC)Lcom/google/common/base/d$n;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$n;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/d$n;-><init>(CC)V

    return-object v0
.end method

.method public static s(C)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$o;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$o;-><init>(C)V

    return-object v0
.end method

.method private static t(II)Z
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x10

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$p;->b:Lcom/google/common/base/d$p;

    return-object v0
.end method

.method public static v()Lcom/google/common/base/d;
    .locals 1

    sget-object v0, Lcom/google/common/base/d$q;->c:Lcom/google/common/base/d$q;

    return-object v0
.end method

.method public static w()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$r;->b:Lcom/google/common/base/d$r;

    return-object v0
.end method

.method public static x()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$s;->b:Lcom/google/common/base/d$s;

    return-object v0
.end method

.method public static y()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$t;->b:Lcom/google/common/base/d$t;

    return-object v0
.end method

.method public static z()Lcom/google/common/base/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/d$u;->b:Lcom/google/common/base/d$u;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract B(C)Z
.end method

.method public C(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public D(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public E(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->n(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F()Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$w;

    invoke-direct {v0, p0}, Lcom/google/common/base/d$w;-><init>(Lcom/google/common/base/d;)V

    return-object v0
.end method

.method public I(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$z;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/d$z;-><init>(Lcom/google/common/base/d;Lcom/google/common/base/d;)V

    return-object v0
.end method

.method public J()Lcom/google/common/base/d;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/z;->i(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method K()Lcom/google/common/base/d;
    .locals 6
    .annotation build Lh3/c;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/base/d;->Q(Ljava/util/BitSet;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/base/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/common/base/d;->L(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->flip(II)V

    sub-int/2addr v3, v1

    const-string v1, ".negate()"

    .line 6
    invoke-virtual {p0}, Lcom/google/common/base/d;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_0
    new-instance v2, Lcom/google/common/base/d$a;

    .line 10
    invoke-static {v3, v0, v1}, Lcom/google/common/base/d;->L(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-direct {v2, p0, v0, v4}, Lcom/google/common/base/d$a;-><init>(Lcom/google/common/base/d;Lcom/google/common/base/d;Ljava/lang/String;)V

    return-object v2
.end method

.method public M(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->n(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 4
    :goto_1
    array-length v3, p1

    if-ne v0, v3, :cond_1

    .line 5
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    invoke-direct {v1, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 6
    :cond_1
    aget-char v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/google/common/base/d;->B(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int v3, v0, v2

    .line 7
    aget-char v4, p1, v0

    aput-char v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public N(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->n(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 4
    aput-char p2, p1, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 5
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 6
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    aput-char p2, p1, v0

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->M(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/d;->N(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->n(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    :cond_3
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/google/common/base/d;->o(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 11
    invoke-virtual {v5, p1, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/base/d;->F()Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->M(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method Q(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lh3/c;
    .end annotation

    const v0, 0xffff

    :goto_0
    if-ltz v0, :cond_1

    int-to-char v1, v0

    .line 1
    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public T(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 2
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-le v0, v5, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/d;->h(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v0, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    sub-int v0, v6, v5

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    .line 5
    invoke-direct/range {v3 .. v9}, Lcom/google/common/base/d;->k(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public U(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-le v0, v1, :cond_3

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public W(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .locals 1

    new-instance v0, Lcom/google/common/base/d$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/d$b;-><init>(Lcom/google/common/base/d;Lcom/google/common/base/d;)V

    return-object v0
.end method

.method public e(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->B(C)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/d;->k(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->B(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public n(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/d;->o(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/a0;->d0(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/d;->B(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
