.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

.field public final synthetic b:Le5/t0;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;->b:Le5/t0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;->b:Le5/t0;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V

    return-void
.end method
