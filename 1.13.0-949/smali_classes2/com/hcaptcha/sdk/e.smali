.class public final synthetic Lcom/hcaptcha/sdk/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/hcaptcha/sdk/f;


# direct methods
.method public synthetic constructor <init>(Lcom/hcaptcha/sdk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hcaptcha/sdk/e;->a:Lcom/hcaptcha/sdk/f;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/e;->a:Lcom/hcaptcha/sdk/f;

    invoke-static {v0, p1, p2, p3}, Lcom/hcaptcha/sdk/f;->U(Lcom/hcaptcha/sdk/f;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
