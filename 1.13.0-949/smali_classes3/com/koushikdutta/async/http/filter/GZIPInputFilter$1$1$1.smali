.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->b([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-static {p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    return-void
.end method
