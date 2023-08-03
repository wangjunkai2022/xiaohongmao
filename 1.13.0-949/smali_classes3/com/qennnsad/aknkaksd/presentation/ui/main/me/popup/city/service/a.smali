.class public Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParserHandler.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Lj5/c;

.field c:Lj5/a;

.field d:Lj5/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lj5/c;

    invoke-direct {v0}, Lj5/c;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->b:Lj5/c;

    .line 4
    new-instance v0, Lj5/a;

    invoke-direct {v0}, Lj5/a;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->c:Lj5/a;

    .line 5
    new-instance v0, Lj5/b;

    invoke-direct {v0}, Lj5/b;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->d:Lj5/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "district"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->c:Lj5/a;

    invoke-virtual {p1}, Lj5/a;->a()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->d:Lj5/b;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "city"

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->b:Lj5/c;

    invoke-virtual {p1}, Lj5/c;->a()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->c:Lj5/a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "province"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->a:Ljava/util/List;

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->b:Lj5/c;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "province"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lj5/c;

    invoke-direct {p1}, Lj5/c;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->b:Lj5/c;

    .line 3
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj5/c;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->b:Lj5/c;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lj5/c;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "city"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lj5/a;

    invoke-direct {p1}, Lj5/a;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->c:Lj5/a;

    .line 7
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj5/a;->d(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->c:Lj5/a;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lj5/a;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p1, "district"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Lj5/b;

    invoke-direct {p1}, Lj5/b;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->d:Lj5/b;

    .line 11
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj5/b;->c(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/service/a;->d:Lj5/b;

    const/4 p2, 0x1

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj5/b;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
