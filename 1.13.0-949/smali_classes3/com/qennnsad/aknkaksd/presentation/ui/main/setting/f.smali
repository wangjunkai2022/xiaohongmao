.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;->b:Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;->b:Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;Landroid/view/View;)V

    return-void
.end method
