.class final Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;
.super Lkotlin/jvm/internal/Lambda;
.source "GPHMediaTypeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHMediaTypeView;-><init>(Landroid/content/Context;Li2/e;[Lcom/giphy/sdk/ui/GPHContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;",
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;",
        "old",
        "new",
        "",
        "a",
        "(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;->a:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "old"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "new"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    check-cast p2, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$b;->a(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
