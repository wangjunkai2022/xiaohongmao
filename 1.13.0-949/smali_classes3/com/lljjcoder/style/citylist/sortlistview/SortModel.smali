.class public Lcom/lljjcoder/style/citylist/sortlistview/SortModel;
.super Ljava/lang/Object;
.source "SortModel.java"


# instance fields
.field private name:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->sortLetters:Ljava/lang/String;

    return-void
.end method
