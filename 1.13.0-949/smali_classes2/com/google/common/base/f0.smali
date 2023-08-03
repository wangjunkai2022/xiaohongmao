.class public final Lcom/google/common/base/f0;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/f0$g;,
        Lcom/google/common/base/f0$h;,
        Lcom/google/common/base/f0$f;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/d;

.field private final b:Z

.field private final c:Lcom/google/common/base/f0$h;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/f0$h;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/base/d;->G()Lcom/google/common/base/d;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;ZLcom/google/common/base/d;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/f0$h;ZLcom/google/common/base/d;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/f0;->c:Lcom/google/common/base/f0$h;

    .line 4
    iput-boolean p2, p0, Lcom/google/common/base/f0;->b:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/base/f0;->a:Lcom/google/common/base/d;

    .line 6
    iput p4, p0, Lcom/google/common/base/f0;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/base/f0;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/base/f0;)Lcom/google/common/base/d;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/f0;->a:Lcom/google/common/base/d;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/base/f0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/common/base/f0;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/google/common/base/f0;)I
    .locals 0

    iget p0, p0, Lcom/google/common/base/f0;->d:I

    return p0
.end method

.method public static e(I)Lcom/google/common/base/f0;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The length may not be less than 1"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/common/base/f0;

    new-instance v1, Lcom/google/common/base/f0$d;

    invoke-direct {v1, p0}, Lcom/google/common/base/f0$d;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;)V

    return-object v0
.end method

.method public static h(C)Lcom/google/common/base/f0;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/d;->q(C)Lcom/google/common/base/d;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/f0;->i(Lcom/google/common/base/d;)Lcom/google/common/base/f0;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/google/common/base/d;)Lcom/google/common/base/f0;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/f0;

    new-instance v1, Lcom/google/common/base/f0$a;

    invoke-direct {v1, p0}, Lcom/google/common/base/f0$a;-><init>(Lcom/google/common/base/d;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;)V

    return-object v0
.end method

.method private static j(Lcom/google/common/base/g;)Lcom/google/common/base/f0;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/base/g;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/common/base/f0;

    new-instance v1, Lcom/google/common/base/f0$c;

    invoke-direct {v1, p0}, Lcom/google/common/base/f0$c;-><init>(Lcom/google/common/base/g;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lcom/google/common/base/f0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/f0;->h(C)Lcom/google/common/base/f0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/common/base/f0;

    new-instance v1, Lcom/google/common/base/f0$b;

    invoke-direct {v1, p0}, Lcom/google/common/base/f0$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;)V

    return-object v0
.end method

.method public static l(Ljava/util/regex/Pattern;)Lcom/google/common/base/f0;
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    new-instance v0, Lcom/google/common/base/t;

    invoke-direct {v0, p0}, Lcom/google/common/base/t;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lcom/google/common/base/f0;->j(Lcom/google/common/base/g;)Lcom/google/common/base/f0;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Lcom/google/common/base/f0;
    .locals 0
    .annotation build Lh3/c;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/z;->a(Ljava/lang/String;)Lcom/google/common/base/g;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/f0;->j(Lcom/google/common/base/g;)Lcom/google/common/base/f0;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/f0;->c:Lcom/google/common/base/f0$h;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/f0$h;->a(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public f(I)Lcom/google/common/base/f0;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must be greater than zero: %s"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/google/common/base/f0;

    iget-object v1, p0, Lcom/google/common/base/f0;->c:Lcom/google/common/base/f0$h;

    iget-boolean v2, p0, Lcom/google/common/base/f0;->b:Z

    iget-object v3, p0, Lcom/google/common/base/f0;->a:Lcom/google/common/base/d;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;ZLcom/google/common/base/d;I)V

    return-object v0
.end method

.method public g()Lcom/google/common/base/f0;
    .locals 5

    new-instance v0, Lcom/google/common/base/f0;

    iget-object v1, p0, Lcom/google/common/base/f0;->c:Lcom/google/common/base/f0$h;

    iget-object v2, p0, Lcom/google/common/base/f0;->a:Lcom/google/common/base/d;

    iget v3, p0, Lcom/google/common/base/f0;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;ZLcom/google/common/base/d;I)V

    return-object v0
.end method

.method public n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/f0$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/f0$e;-><init>(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/base/f0;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public q()Lcom/google/common/base/f0;
    .locals 1

    invoke-static {}, Lcom/google/common/base/d;->X()Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/f0;->r(Lcom/google/common/base/d;)Lcom/google/common/base/f0;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/google/common/base/d;)Lcom/google/common/base/f0;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/f0;

    iget-object v1, p0, Lcom/google/common/base/f0;->c:Lcom/google/common/base/f0$h;

    iget-boolean v2, p0, Lcom/google/common/base/f0;->b:Z

    iget v3, p0, Lcom/google/common/base/f0;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/f0;-><init>(Lcom/google/common/base/f0$h;ZLcom/google/common/base/d;I)V

    return-object v0
.end method

.method public s(C)Lcom/google/common/base/f0$f;
    .locals 0
    .annotation build Lh3/a;
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/f0;->h(C)Lcom/google/common/base/f0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/f0;->t(Lcom/google/common/base/f0;)Lcom/google/common/base/f0$f;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/google/common/base/f0;)Lcom/google/common/base/f0$f;
    .locals 2
    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/base/f0$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/f0$f;-><init>(Lcom/google/common/base/f0;Lcom/google/common/base/f0;Lcom/google/common/base/f0$a;)V

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/google/common/base/f0$f;
    .locals 0
    .annotation build Lh3/a;
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/f0;->k(Ljava/lang/String;)Lcom/google/common/base/f0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/f0;->t(Lcom/google/common/base/f0;)Lcom/google/common/base/f0$f;

    move-result-object p1

    return-object p1
.end method
