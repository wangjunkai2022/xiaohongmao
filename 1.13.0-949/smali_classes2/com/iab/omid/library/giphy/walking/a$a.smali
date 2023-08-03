.class Lcom/iab/omid/library/giphy/walking/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/giphy/walking/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/giphy/walking/a;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/giphy/walking/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/giphy/walking/a$a;->a:Lcom/iab/omid/library/giphy/walking/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/walking/a$a;->a:Lcom/iab/omid/library/giphy/walking/a;

    invoke-static {v0}, Lcom/iab/omid/library/giphy/walking/a;->b(Lcom/iab/omid/library/giphy/walking/a;)Lcom/iab/omid/library/giphy/walking/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/walking/d;->c()V

    return-void
.end method
