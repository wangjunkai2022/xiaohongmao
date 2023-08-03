.class final Lorg/jsoup/parser/Token$h;
.super Lorg/jsoup/parser/Token$i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$i;-><init>()V

    .line 2
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method H()Lorg/jsoup/parser/Token$i;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/parser/Token$i;->H()Lorg/jsoup/parser/Token$i;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method K(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    .line 3
    invoke-static {p1}, Lorg/jsoup/parser/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method bridge synthetic m()Lorg/jsoup/parser/Token;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$h;->H()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
