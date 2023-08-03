.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/a;
.super Ljava/lang/Object;
.source "DefaultBubbleBehavior.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/viewprovider/d;


# instance fields
.field private final a:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/a;->a:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/a;->a:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/a;->a:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
