.class public final synthetic Lcom/qennnsad/aknkaksd/util/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/j0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/j0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/j0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/j0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/j0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/j0;->c:Ljava/lang/String;

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/k0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokhttp3/ResponseBody;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
