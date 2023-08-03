.class public Lorg/jsoup/helper/e$a;
.super Ljava/lang/Object;
.source "W3CDom.java"

# interfaces
.implements Lorg/jsoup/select/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "xmlns"

.field private static final e:Ljava/lang/String; = "xmlns:"


# instance fields
.field private final a:Lorg/w3c/dom/Document;

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    .line 3
    iput-object p1, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;

    return-void
.end method

.method private c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V
    .locals 2

    const-string v0, "jsoupSource"

    const/4 v1, 0x0

    .line 1
    invoke-interface {p1, v0, p2, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private d(Lorg/jsoup/nodes/k;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-static {v1, v2}, Lorg/jsoup/nodes/a;->d(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lorg/jsoup/nodes/g;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/a;

    .line 3
    invoke-virtual {v1}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "xmlns:"

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    iget-object v3, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/k;I)V
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/jsoup/nodes/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    instance-of p1, p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/jsoup/nodes/k;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p2, p1, Lorg/jsoup/nodes/g;

    if-eqz p2, :cond_1

    .line 3
    check-cast p1, Lorg/jsoup/nodes/g;

    .line 4
    invoke-direct {p0, p1}, Lorg/jsoup/helper/e$a;->e(Lorg/jsoup/nodes/g;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/jsoup/helper/e$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    :try_start_0
    const-string v1, ":"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    invoke-interface {v1, p2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 10
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/e$a;->d(Lorg/jsoup/nodes/k;Lorg/w3c/dom/Element;)V

    .line 11
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/e$a;->c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V

    .line 12
    iput-object p2, p0, Lorg/jsoup/helper/e$a;->c:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/e$a;->c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V

    goto :goto_1

    .line 14
    :cond_1
    instance-of p2, p1, Lorg/jsoup/nodes/n;

    if-eqz p2, :cond_2

    .line 15
    check-cast p1, Lorg/jsoup/nodes/n;

    .line 16
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 17
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/e$a;->c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V

    goto :goto_1

    .line 18
    :cond_2
    instance-of p2, p1, Lorg/jsoup/nodes/d;

    if-eqz p2, :cond_3

    .line 19
    check-cast p1, Lorg/jsoup/nodes/d;

    .line 20
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/d;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p2

    .line 21
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/e$a;->c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V

    goto :goto_1

    .line 22
    :cond_3
    instance-of p2, p1, Lorg/jsoup/nodes/e;

    if-eqz p2, :cond_4

    .line 23
    check-cast p1, Lorg/jsoup/nodes/e;

    .line 24
    iget-object p2, p0, Lorg/jsoup/helper/e$a;->a:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/e;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 25
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/e$a;->c(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/k;)V

    :cond_4
    :goto_1
    return-void
.end method
