.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/webview/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/i;->a:I

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/i;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/i;->a:I

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/i;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->x0(ILcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method
