.class public final Lcom/iab/omid/library/giphy/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/giphy/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/giphy/c;

    invoke-direct {v0}, Lcom/iab/omid/library/giphy/c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/giphy/a;->a:Lcom/iab/omid/library/giphy/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    sget-object p0, Lcom/iab/omid/library/giphy/a;->a:Lcom/iab/omid/library/giphy/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/giphy/c;->b(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/giphy/a;->a:Lcom/iab/omid/library/giphy/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/iab/omid/library/giphy/a;->a:Lcom/iab/omid/library/giphy/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/c;->f()Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/iab/omid/library/giphy/a;->a:Lcom/iab/omid/library/giphy/c;

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/giphy/c;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
