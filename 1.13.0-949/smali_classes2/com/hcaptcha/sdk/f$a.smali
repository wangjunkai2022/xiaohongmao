.class Lcom/hcaptcha/sdk/f$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hcaptcha/sdk/f;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hcaptcha/sdk/f;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hcaptcha/sdk/f$a;->a:Lcom/hcaptcha/sdk/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/hcaptcha/sdk/f$a;->a:Lcom/hcaptcha/sdk/f;

    invoke-static {p1}, Lcom/hcaptcha/sdk/f;->V(Lcom/hcaptcha/sdk/f;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
