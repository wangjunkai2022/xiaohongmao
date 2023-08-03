.class public final Lcom/google/common/base/v$b;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/v$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/base/v$b$a;

.field private c:Lcom/google/common/base/v$b$a;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/base/v$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/v$b$a;-><init>(Lcom/google/common/base/v$a;)V

    iput-object v0, p0, Lcom/google/common/base/v$b;->b:Lcom/google/common/base/v$b$a;

    .line 4
    iput-object v0, p0, Lcom/google/common/base/v$b;->c:Lcom/google/common/base/v$b$a;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/common/base/v$b;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/v$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private h()Lcom/google/common/base/v$b$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/base/v$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/v$b$a;-><init>(Lcom/google/common/base/v$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/base/v$b;->c:Lcom/google/common/base/v$b$a;

    iput-object v0, v1, Lcom/google/common/base/v$b$a;->c:Lcom/google/common/base/v$b$a;

    iput-object v0, p0, Lcom/google/common/base/v$b;->c:Lcom/google/common/base/v$b$a;

    return-object v0
.end method

.method private i(Ljava/lang/Object;)Lcom/google/common/base/v$b;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/v$b;->h()Lcom/google/common/base/v$b$a;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lcom/google/common/base/v$b$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/v$b;->h()Lcom/google/common/base/v$b$a;

    move-result-object v0

    .line 2
    iput-object p2, v0, Lcom/google/common/base/v$b$a;->b:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/v$b$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;C)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;D)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;F)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;I)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;J)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Z)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/v$b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public k(C)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public l(D)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public m(F)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public o(J)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;)Lcom/google/common/base/v$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public q(Z)Lcom/google/common/base/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/v$b;->i(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object p1

    return-object p1
.end method

.method public r()Lcom/google/common/base/v$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/v$b;->d:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/v$b;->d:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/common/base/v$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/google/common/base/v$b;->b:Lcom/google/common/base/v$b$a;

    iget-object v2, v2, Lcom/google/common/base/v$b$a;->c:Lcom/google/common/base/v$b$a;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 4
    iget-object v4, v2, Lcom/google/common/base/v$b$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 5
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, v2, Lcom/google/common/base/v$b$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 9
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 12
    :cond_3
    iget-object v2, v2, Lcom/google/common/base/v$b$a;->c:Lcom/google/common/base/v$b$a;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
