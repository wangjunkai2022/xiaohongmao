.class public final Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;
.super Ljava/lang/Object;
.source "PinMessageUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/room/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0005R\u0017\u0010\u000e\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0012\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0010\u001a\u0004\u0008\u0007\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;",
        "",
        "",
        "a",
        "I",
        "()I",
        "anchorId",
        "b",
        "c",
        "roomId",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;",
        "d",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;",
        "selectedItem",
        "",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "content",
        "<init>",
        "(IILcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;Ljava/lang/String;)V",
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

.field private final b:I

.field private final c:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;Ljava/lang/String;)V
    .locals 1
    .param p3    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "selectedItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->a:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->b:I

    return v0
.end method

.method public final d()Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/x$a;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;

    return-object v0
.end method
