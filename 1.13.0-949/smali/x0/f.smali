.class public Lx0/f;
.super Lq1/b;
.source "ImageOriginRequestListener.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lx0/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx0/e;)V
    .locals 0
    .param p2    # Lx0/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOriginLister"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq1/b;-><init>()V

    .line 2
    iput-object p2, p0, Lx0/f;->b:Lx0/e;

    .line 3
    invoke-virtual {p0, p1}, Lx0/f;->l(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "ultimateProducerName",
            "successful"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lx0/f;->b:Lx0/e;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lx0/f;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lx0/g;->a(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-interface {p1, v0, v1, p3, p2}, Lx0/e;->a(Ljava/lang/String;IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerId"
        }
    .end annotation

    iput-object p1, p0, Lx0/f;->a:Ljava/lang/String;

    return-void
.end method
