.class public Lorg/jsoup/helper/c$c;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data key must not be empty"

    .line 2
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Data value must not be null"

    .line 3
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lorg/jsoup/helper/c$c;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/jsoup/helper/c$c;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;
    .locals 1

    new-instance v0, Lorg/jsoup/helper/c$c;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/helper/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/c$c;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/helper/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lorg/jsoup/helper/c$c;->d(Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c$c;->b:Ljava/lang/String;

    const-string v1, "Data input stream must not be null"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/c$c;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/c$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$c;->k(Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/String;)Lorg/jsoup/Connection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$c;->l(Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/io/InputStream;)Lorg/jsoup/Connection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$c;->d(Ljava/io/InputStream;)Lorg/jsoup/helper/c$c;

    move-result-object p1

    return-object p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$c;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$c;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ljava/lang/String;)Lorg/jsoup/helper/c$c;
    .locals 1

    const-string v0, "Data key must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/c$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lorg/jsoup/helper/c$c;
    .locals 1

    const-string v0, "Data value must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/c$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/helper/c$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/helper/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$c;->b:Ljava/lang/String;

    return-object v0
.end method
