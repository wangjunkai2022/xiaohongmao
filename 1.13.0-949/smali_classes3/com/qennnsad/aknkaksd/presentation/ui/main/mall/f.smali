.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment$h;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;Ljava/lang/String;)V

    return-void
.end method
