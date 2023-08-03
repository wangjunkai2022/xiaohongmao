.class public final Lcom/squareup/moshi/internal/b;
.super Lcom/squareup/moshi/h;
.source "NullSafeJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/moshi/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/moshi/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/moshi/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/moshi/internal/b;->a:Lcom/squareup/moshi/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/internal/b;->a:Lcom/squareup/moshi/h;

    return-object v0
.end method

.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->I()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->D()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/internal/b;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/q;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->D()Lcom/squareup/moshi/q;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/internal/b;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/moshi/h;->toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/internal/b;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullSafe()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
