.class public final Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;
.super Ljava/lang/Object;
.source "GetPageListForAnchorUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J1\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0018R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "a",
        "",
        "b",
        "c",
        "",
        "d",
        "anchorType",
        "page",
        "size",
        "isPkOn",
        "e",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "g",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "I",
        "h",
        "()I",
        "i",
        "Z",
        "j",
        "()Z",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "anchorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    .line 4
    iput p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    .line 5
    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    return-void
.end method

.method public static synthetic f(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->e(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    return v0
.end method

.method public final e(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "anchorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)V

    return-object v0
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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    iget-boolean p1, p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final g()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params(anchorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPkOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
