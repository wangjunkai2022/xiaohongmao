.class public final Lcom/google/common/net/d;
.super Ljava/lang/Object;
.source "InternetDomainName.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final e:Lcom/google/common/base/d;

.field private static final f:Lcom/google/common/base/f0;

.field private static final g:Lcom/google/common/base/u;

.field private static final h:I = -0x1

.field private static final i:I = 0x7f

.field private static final j:I = 0xfd

.field private static final k:I = 0x3f

.field private static final l:Lcom/google/common/base/d;

.field private static final m:Lcom/google/common/base/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ".\u3002\uff0e\uff61"

    .line 1
    invoke-static {v0}, Lcom/google/common/base/d;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/d;->e:Lcom/google/common/base/d;

    const/16 v0, 0x2e

    .line 2
    invoke-static {v0}, Lcom/google/common/base/f0;->h(C)Lcom/google/common/base/f0;

    move-result-object v1

    sput-object v1, Lcom/google/common/net/d;->f:Lcom/google/common/base/f0;

    .line 3
    invoke-static {v0}, Lcom/google/common/base/u;->o(C)Lcom/google/common/base/u;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/d;->g:Lcom/google/common/base/u;

    const-string v0, "-_"

    .line 4
    invoke-static {v0}, Lcom/google/common/base/d;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/d;->l:Lcom/google/common/base/d;

    .line 5
    invoke-static {}, Lcom/google/common/base/d;->x()Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/d;->I(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/d;->m:Lcom/google/common/base/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/common/net/d;->e:Lcom/google/common/base/d;

    const/16 v1, 0x2e

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/d;->N(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/google/common/net/d;->f:Lcom/google/common/base/f0;

    invoke-virtual {v0, p1}, Lcom/google/common/base/f0;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Domain has too many parts: \'%s\'"

    invoke-static {v1, v2, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {v0}, Lcom/google/common/net/d;->x(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Not a valid domain name: \'%s\'"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/net/d;->c(Lcom/google/common/base/Optional;)I

    move-result p1

    iput p1, p0, Lcom/google/common/net/d;->c:I

    .line 11
    sget-object p1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->REGISTRY:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/net/d;->c(Lcom/google/common/base/Optional;)I

    move-result p1

    iput p1, p0, Lcom/google/common/net/d;->d:I

    return-void
.end method

.method private a(I)Lcom/google/common/net/d;
    .locals 3

    sget-object v0, Lcom/google/common/net/d;->g:Lcom/google/common/base/u;

    iget-object v1, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/base/u;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/net/d;->d(Ljava/lang/String;)Lcom/google/common/net/d;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/common/base/Optional;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    sget-object v2, Lcom/google/common/net/d;->g:Lcom/google/common/base/u;

    iget-object v3, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/u;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/thirdparty/publicsuffix/a;->a:Lcom/google/common/collect/ImmutableMap;

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 5
    invoke-static {p1, v3}, Lcom/google/common/net/d;->o(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 6
    :cond_0
    sget-object v3, Lcom/google/thirdparty/publicsuffix/a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 7
    :cond_1
    invoke-static {p1, v2}, Lcom/google/common/net/d;->p(Lcom/google/common/base/Optional;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public static d(Ljava/lang/String;)Lcom/google/common/net/d;
    .locals 1

    new-instance v0, Lcom/google/common/net/d;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/net/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/d;->d(Ljava/lang/String;)Lcom/google/common/net/d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static o(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static p(Lcom/google/common/base/Optional;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/net/d;->f:Lcom/google/common/base/f0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/base/f0;->f(I)Lcom/google/common/base/f0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/f0;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/thirdparty/publicsuffix/a;->b:Lcom/google/common/collect/ImmutableMap;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/google/common/net/d;->o(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static w(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/common/base/d;->f()Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/d;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v3, Lcom/google/common/net/d;->m:Lcom/google/common/base/d;

    invoke-virtual {v3, v0}, Lcom/google/common/base/d;->C(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    sget-object v0, Lcom/google/common/net/d;->l:Lcom/google/common/base/d;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/d;->B(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/d;->B(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, Lcom/google/common/base/d;->j()Lcom/google/common/base/d;

    move-result-object p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/common/base/d;->B(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method private static x(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/common/net/d;->w(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-static {v4, v3}, Lcom/google/common/net/d;->w(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/common/net/d;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/net/d;->d(Ljava/lang/String;)Lcom/google/common/net/d;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/d;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/net/d;

    .line 3
    iget-object v0, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/common/net/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/google/common/net/d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/google/common/net/d;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/common/net/d;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lcom/google/common/net/d;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/google/common/net/d;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/google/common/net/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Lcom/google/common/net/d;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    iget v0, p0, Lcom/google/common/net/d;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Lcom/google/common/net/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/d;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    const-string v2, "Domain \'%s\' has no parent"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/net/d;->a(I)Lcom/google/common/net/d;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/net/d;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public s()Lcom/google/common/net/d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/net/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/d;->c:I

    invoke-direct {p0, v0}, Lcom/google/common/net/d;->a(I)Lcom/google/common/net/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public t()Lcom/google/common/net/d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/net/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/d;->d:I

    invoke-direct {p0, v0}, Lcom/google/common/net/d;->a(I)Lcom/google/common/net/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lcom/google/common/net/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/d;->m()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    const-string v2, "Not under a registry suffix: %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lcom/google/common/net/d;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/d;->a(I)Lcom/google/common/net/d;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/google/common/net/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/d;->l()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/net/d;->a:Ljava/lang/String;

    const-string v2, "Not under a public suffix: %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lcom/google/common/net/d;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/d;->a(I)Lcom/google/common/net/d;

    move-result-object v0

    return-object v0
.end method
