.class Leltos/simpledialogfragment/list/b$a;
.super Ljava/lang/Object;
.source "AdvancedSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Leltos/simpledialogfragment/list/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/list/b$a;->c:Leltos/simpledialogfragment/list/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Leltos/simpledialogfragment/list/b$a;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Leltos/simpledialogfragment/list/b$a;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
