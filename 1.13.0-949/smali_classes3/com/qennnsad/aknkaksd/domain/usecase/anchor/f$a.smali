.class public final Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;
.super Ljava/lang/Object;
.source "GetFollowAnchorUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000b\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;",
        "",
        "",
        "a",
        "",
        "b",
        "page",
        "isPkOn",
        "c",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "I",
        "e",
        "()I",
        "Z",
        "f",
        "()Z",
        "<init>",
        "(IZ)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;IZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->c(IZ)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    return v0
.end method

.method public final c(IZ)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;

    invoke-direct {v0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;-><init>(IZ)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    iget-boolean p1, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params(page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPkOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
