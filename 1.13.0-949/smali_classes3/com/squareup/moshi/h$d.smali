.class Lcom/squareup/moshi/h$d;
.super Lcom/squareup/moshi/h;
.source "JsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/h;->indent(Ljava/lang/String;)Lcom/squareup/moshi/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/moshi/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/squareup/moshi/h;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/h;Lcom/squareup/moshi/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/h$d;->c:Lcom/squareup/moshi/h;

    iput-object p2, p0, Lcom/squareup/moshi/h$d;->a:Lcom/squareup/moshi/h;

    iput-object p3, p0, Lcom/squareup/moshi/h$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/squareup/moshi/h;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/squareup/moshi/h$d;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isLenient()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/h$d;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0}, Lcom/squareup/moshi/h;->isLenient()Z

    move-result v0

    return v0
.end method

.method public toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    .locals 2
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

    .line 1
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/squareup/moshi/h$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/q;->K(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/h$d;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/moshi/h;->toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/squareup/moshi/q;->K(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/q;->K(Ljava/lang/String;)V

    .line 5
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/moshi/h$d;->a:Lcom/squareup/moshi/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".indent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/h$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
