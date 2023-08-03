.class public Lcom/bumptech/glide/load/model/stream/c;
.super Lcom/bumptech/glide/load/model/x;
.source "HttpUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/x<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/n<",
            "Lcom/bumptech/glide/load/model/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/x;-><init>(Lcom/bumptech/glide/load/model/n;)V

    return-void
.end method
