.class Lcom/konstantinschubert/writeinterceptingwebview/a;
.super Ljava/lang/Object;
.source "AjaxInterceptJavascriptInterface.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Lcom/konstantinschubert/writeinterceptingwebview/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/konstantinschubert/writeinterceptingwebview/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/konstantinschubert/writeinterceptingwebview/a;->a:Lcom/konstantinschubert/writeinterceptingwebview/e;

    return-void
.end method

.method public static a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/konstantinschubert/writeinterceptingwebview/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "interceptheader.html"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/konstantinschubert/writeinterceptingwebview/b;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/konstantinschubert/writeinterceptingwebview/a;->b:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0}, Lorg/jsoup/a;->p(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document$OutputSettings;->m(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    const-string p1, "head"

    .line 6
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->j1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    sget-object v0, Lcom/konstantinschubert/writeinterceptingwebview/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/g;->O1(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public customAjax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/konstantinschubert/writeinterceptingwebview/a;->a:Lcom/konstantinschubert/writeinterceptingwebview/e;

    invoke-virtual {v0, p1, p2}, Lcom/konstantinschubert/writeinterceptingwebview/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
