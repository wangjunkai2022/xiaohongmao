.class public final Lcom/squareup/moshi/w;
.super Lcom/squareup/moshi/h;
.source "Rfc3339DateJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/h<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/moshi/adapters/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/squareup/moshi/h;-><init>()V

    .line 2
    new-instance v0, Lcom/squareup/moshi/adapters/d;

    invoke-direct {v0}, Lcom/squareup/moshi/adapters/d;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/w;->a:Lcom/squareup/moshi/adapters/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/JsonReader;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/w;->a:Lcom/squareup/moshi/adapters/d;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/adapters/d;->a(Lcom/squareup/moshi/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/squareup/moshi/q;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/w;->a:Lcom/squareup/moshi/adapters/d;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/moshi/adapters/d;->b(Lcom/squareup/moshi/q;Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/w;->a(Lcom/squareup/moshi/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/w;->b(Lcom/squareup/moshi/q;Ljava/util/Date;)V

    return-void
.end method
