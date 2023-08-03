.class Lcom/clj/fastble/scan/c$a$a;
.super Ljava/lang/Object;
.source "BleScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/scan/c$a;->k(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lg0/h;

.field final synthetic c:Lcom/clj/fastble/scan/c$a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/c$a;Ljava/util/List;Lg0/h;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/c$a$a;->c:Lcom/clj/fastble/scan/c$a;

    iput-object p2, p0, Lcom/clj/fastble/scan/c$a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/clj/fastble/scan/c$a$a;->b:Lg0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/scan/c$a$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    iget-object v2, p0, Lcom/clj/fastble/scan/c$a$a;->b:Lg0/h;

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/a;->c(Lcom/clj/fastble/data/BleDevice;Lg0/b;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method
