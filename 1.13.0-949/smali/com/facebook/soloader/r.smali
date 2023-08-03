.class public Lcom/facebook/soloader/r;
.super Ljava/lang/Object;
.source "NativeLoaderToSoLoaderDelegate.java"

# interfaces
.implements Ly1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-static {}, Lcom/facebook/soloader/SoLoader;->n()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/soloader/SoLoader;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;I)Z
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/facebook/soloader/SoLoader;->u(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
