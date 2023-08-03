.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    iput-wide p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;->b:J

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V

    return-void
.end method
