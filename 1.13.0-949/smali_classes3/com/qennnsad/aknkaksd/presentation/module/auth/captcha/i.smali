.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/i;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/i;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V

    return-void
.end method
