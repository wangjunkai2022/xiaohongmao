.class Lcom/clj/fastble/scan/a$f;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/scan/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/scan/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/a;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/a$f;->a:Lcom/clj/fastble/scan/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/scan/a$f;->a:Lcom/clj/fastble/scan/a;

    invoke-static {v0}, Lcom/clj/fastble/scan/a;->b(Lcom/clj/fastble/scan/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/scan/a;->k(Ljava/util/List;)V

    return-void
.end method
