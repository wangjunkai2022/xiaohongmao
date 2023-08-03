.class final Lcom/jakewharton/rxbinding4/widget/v0$a;
.super Ljava/lang/Object;
.source "SearchViewQueryConsumer.kt"

# interfaces
.implements Lq7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding4/widget/v0;->a(Landroid/widget/SearchView;Z)Lq7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/g<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "text",
        "",
        "a",
        "(Ljava/lang/CharSequence;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SearchView;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/widget/SearchView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/v0$a;->a:Landroid/widget/SearchView;

    iput-boolean p2, p0, Lcom/jakewharton/rxbinding4/widget/v0$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/v0$a;->a:Landroid/widget/SearchView;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/v0$a;->b:Z

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding4/widget/v0$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
