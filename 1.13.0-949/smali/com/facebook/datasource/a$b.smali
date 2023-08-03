.class Lcom/facebook/datasource/a$b;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/f;

.field final synthetic b:Lcom/facebook/datasource/a;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/a;Lcom/facebook/datasource/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$subscriber"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/datasource/a$b;->b:Lcom/facebook/datasource/a;

    iput-object p2, p0, Lcom/facebook/datasource/a$b;->a:Lcom/facebook/datasource/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/datasource/a$b;->a:Lcom/facebook/datasource/f;

    iget-object v1, p0, Lcom/facebook/datasource/a$b;->b:Lcom/facebook/datasource/a;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/f;->d(Lcom/facebook/datasource/d;)V

    return-void
.end method
