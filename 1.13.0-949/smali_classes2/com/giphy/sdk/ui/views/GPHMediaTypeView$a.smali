.class final Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;
.super Ljava/lang/Object;
.source "GPHMediaTypeView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHMediaTypeView;-><init>(Landroid/content/Context;Li2/e;[Lcom/giphy/sdk/ui/GPHContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/giphy/sdk/ui/views/GPHMediaTypeView$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GPHMediaTypeView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.giphy.sdk.ui.GPHContentType"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->getMediaConfigListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$a;->a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->getGphContentType()Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
