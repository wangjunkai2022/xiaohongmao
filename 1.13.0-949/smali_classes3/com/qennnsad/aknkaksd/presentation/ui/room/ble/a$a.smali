.class Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/data/BleDevice;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;)Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a;)Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$a;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-interface {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ble/a$d;->c(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
