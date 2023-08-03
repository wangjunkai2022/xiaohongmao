.class Lcom/iab/omid/library/giphy/publisher/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/giphy/publisher/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/iab/omid/library/giphy/publisher/c;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/giphy/publisher/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/giphy/publisher/c$a;->b:Lcom/iab/omid/library/giphy/publisher/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/iab/omid/library/giphy/publisher/c;->v(Lcom/iab/omid/library/giphy/publisher/c;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/giphy/publisher/c$a;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/c$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
