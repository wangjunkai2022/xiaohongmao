.class final Lorg/jsoup/nodes/g$c;
.super Lorg/jsoup/helper/ChangeNotifyingArrayList;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/ChangeNotifyingArrayList<",
        "Lorg/jsoup/nodes/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/g;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/jsoup/helper/ChangeNotifyingArrayList;-><init>(I)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/g$c;->a:Lorg/jsoup/nodes/g;

    return-void
.end method


# virtual methods
.method public onContentsChanged()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g$c;->a:Lorg/jsoup/nodes/g;

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->I()V

    return-void
.end method
