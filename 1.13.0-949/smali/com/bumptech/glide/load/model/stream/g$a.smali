.class public Lcom/bumptech/glide/load/model/stream/g$a;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/o<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lcom/bumptech/glide/load/model/r;)Lcom/bumptech/glide/load/model/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/r;",
            ")",
            "Lcom/bumptech/glide/load/model/n<",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/model/stream/g;

    const-class v1, Lcom/bumptech/glide/load/model/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/bumptech/glide/load/model/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/stream/g;-><init>(Lcom/bumptech/glide/load/model/n;)V

    return-object v0
.end method