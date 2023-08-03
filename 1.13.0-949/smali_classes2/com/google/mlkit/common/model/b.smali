.class public Lcom/google/mlkit/common/model/b;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/model/b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method synthetic constructor <init>(ZZLcom/google/mlkit/common/model/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/common/model/b;->a:Z

    iput-boolean p2, p0, Lcom/google/mlkit/common/model/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/b;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/common/model/b;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/common/model/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/b;

    iget-boolean v1, p0, Lcom/google/mlkit/common/model/b;->a:Z

    .line 3
    iget-boolean v3, p1, Lcom/google/mlkit/common/model/b;->a:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/common/model/b;->b:Z

    iget-boolean p1, p1, Lcom/google/mlkit/common/model/b;->b:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/mlkit/common/model/b;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/mlkit/common/model/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
