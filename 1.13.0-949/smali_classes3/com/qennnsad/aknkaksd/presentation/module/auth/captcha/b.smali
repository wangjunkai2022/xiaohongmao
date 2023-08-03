.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le5/a2;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;


# direct methods
.method public synthetic constructor <init>(Le5/a2;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/b;->a:Le5/a2;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/b;->a:Le5/a2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;->U(Le5/a2;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;Landroid/view/View;)V

    return-void
.end method
