.class public final Lcom/giphy/sdk/ui/drawables/c;
.super Ljava/lang/Object;
.source "LoadStep.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\t\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000e\u001a\u0004\u0008\u0003\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/c;",
        "",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "a",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "c",
        "()Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "type",
        "",
        "b",
        "Z",
        "()Z",
        "onlyCached",
        "Lcom/giphy/sdk/ui/drawables/GifStepAction;",
        "Lcom/giphy/sdk/ui/drawables/GifStepAction;",
        "()Lcom/giphy/sdk/ui/drawables/GifStepAction;",
        "actionIfLoaded",
        "<init>",
        "(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/giphy/sdk/core/models/enums/RenditionType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lcom/giphy/sdk/ui/drawables/GifStepAction;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/ui/drawables/GifStepAction;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionIfLoaded"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/drawables/c;->a:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iput-boolean p2, p0, Lcom/giphy/sdk/ui/drawables/c;->b:Z

    iput-object p3, p0, Lcom/giphy/sdk/ui/drawables/c;->c:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    return-void
.end method


# virtual methods
.method public final a()Lcom/giphy/sdk/ui/drawables/GifStepAction;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/c;->c:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/drawables/c;->b:Z

    return v0
.end method

.method public final c()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/c;->a:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method
