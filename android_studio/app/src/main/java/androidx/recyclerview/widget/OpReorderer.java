package androidx.recyclerview.widget;

import androidx.recyclerview.widget.AdapterHelper;
import java.util.List;

/* loaded from: classes.dex */
class OpReorderer {
    final Callback mCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i4, int i10, int i11, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z9 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z9 = true;
            } else if (z9) {
                return size;
            }
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i4, AdapterHelper.UpdateOp updateOp, int i10, AdapterHelper.UpdateOp updateOp2) {
        int i11 = updateOp.itemCount;
        int i12 = updateOp2.positionStart;
        int i13 = i11 < i12 ? -1 : 0;
        int i14 = updateOp.positionStart;
        if (i14 < i12) {
            i13++;
        }
        if (i12 <= i14) {
            updateOp.positionStart = i14 + updateOp2.itemCount;
        }
        int i15 = updateOp2.positionStart;
        if (i15 <= i11) {
            updateOp.itemCount = i11 + updateOp2.itemCount;
        }
        updateOp2.positionStart = i15 + i13;
        list.set(i4, updateOp2);
        list.set(i10, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i4, int i10) {
        AdapterHelper.UpdateOp updateOp = list.get(i4);
        AdapterHelper.UpdateOp updateOp2 = list.get(i10);
        int i11 = updateOp2.cmd;
        if (i11 == 1) {
            swapMoveAdd(list, i4, updateOp, i10, updateOp2);
        } else if (i11 == 2) {
            swapMoveRemove(list, i4, updateOp, i10, updateOp2);
        } else if (i11 != 4) {
        } else {
            swapMoveUpdate(list, i4, updateOp, i10, updateOp2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            }
            swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
        }
    }

    void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int i4, AdapterHelper.UpdateOp updateOp, int i10, AdapterHelper.UpdateOp updateOp2) {
        boolean z9;
        int i11 = updateOp.positionStart;
        int i12 = updateOp.itemCount;
        boolean z10 = false;
        if (i11 < i12) {
            if (updateOp2.positionStart == i11 && updateOp2.itemCount == i12 - i11) {
                z9 = false;
                z10 = true;
            } else {
                z9 = false;
            }
        } else if (updateOp2.positionStart == i12 + 1 && updateOp2.itemCount == i11 - i12) {
            z9 = true;
            z10 = true;
        } else {
            z9 = true;
        }
        int i13 = updateOp2.positionStart;
        if (i12 < i13) {
            updateOp2.positionStart = i13 - 1;
        } else {
            int i14 = updateOp2.itemCount;
            if (i12 < i13 + i14) {
                updateOp2.itemCount = i14 - 1;
                updateOp.cmd = 2;
                updateOp.itemCount = 1;
                if (updateOp2.itemCount == 0) {
                    list.remove(i10);
                    this.mCallback.recycleUpdateOp(updateOp2);
                    return;
                }
                return;
            }
        }
        int i15 = updateOp.positionStart;
        int i16 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOp3 = null;
        if (i15 <= i16) {
            updateOp2.positionStart = i16 + 1;
        } else {
            int i17 = updateOp2.itemCount;
            if (i15 < i16 + i17) {
                updateOp3 = this.mCallback.obtainUpdateOp(2, i15 + 1, (i16 + i17) - i15, null);
                updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
            }
        }
        if (z10) {
            list.set(i4, updateOp2);
            list.remove(i10);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (z9) {
            if (updateOp3 != null) {
                int i18 = updateOp.positionStart;
                if (i18 > updateOp3.positionStart) {
                    updateOp.positionStart = i18 - updateOp3.itemCount;
                }
                int i19 = updateOp.itemCount;
                if (i19 > updateOp3.positionStart) {
                    updateOp.itemCount = i19 - updateOp3.itemCount;
                }
            }
            int i20 = updateOp.positionStart;
            if (i20 > updateOp2.positionStart) {
                updateOp.positionStart = i20 - updateOp2.itemCount;
            }
            int i21 = updateOp.itemCount;
            if (i21 > updateOp2.positionStart) {
                updateOp.itemCount = i21 - updateOp2.itemCount;
            }
        } else {
            if (updateOp3 != null) {
                int i22 = updateOp.positionStart;
                if (i22 >= updateOp3.positionStart) {
                    updateOp.positionStart = i22 - updateOp3.itemCount;
                }
                int i23 = updateOp.itemCount;
                if (i23 >= updateOp3.positionStart) {
                    updateOp.itemCount = i23 - updateOp3.itemCount;
                }
            }
            int i24 = updateOp.positionStart;
            if (i24 >= updateOp2.positionStart) {
                updateOp.positionStart = i24 - updateOp2.itemCount;
            }
            int i25 = updateOp.itemCount;
            if (i25 >= updateOp2.positionStart) {
                updateOp.itemCount = i25 - updateOp2.itemCount;
            }
        }
        list.set(i4, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i10, updateOp);
        } else {
            list.remove(i10);
        }
        if (updateOp3 != null) {
            list.add(i4, updateOp3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void swapMoveUpdate(java.util.List<androidx.recyclerview.widget.AdapterHelper.UpdateOp> r9, int r10, androidx.recyclerview.widget.AdapterHelper.UpdateOp r11, int r12, androidx.recyclerview.widget.AdapterHelper.UpdateOp r13) {
        /*
            r8 = this;
            int r0 = r11.itemCount
            int r1 = r13.positionStart
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Ld
            int r1 = r1 - r4
            r13.positionStart = r1
            goto L20
        Ld:
            int r5 = r13.itemCount
            int r1 = r1 + r5
            if (r0 >= r1) goto L20
            int r5 = r5 - r4
            r13.itemCount = r5
            androidx.recyclerview.widget.OpReorderer$Callback r0 = r8.mCallback
            int r1 = r11.positionStart
            java.lang.Object r5 = r13.payload
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r0 = r0.obtainUpdateOp(r2, r1, r4, r5)
            goto L21
        L20:
            r0 = r3
        L21:
            int r1 = r11.positionStart
            int r5 = r13.positionStart
            if (r1 > r5) goto L2b
            int r5 = r5 + r4
            r13.positionStart = r5
            goto L41
        L2b:
            int r6 = r13.itemCount
            int r7 = r5 + r6
            if (r1 >= r7) goto L41
            int r5 = r5 + r6
            int r5 = r5 - r1
            androidx.recyclerview.widget.OpReorderer$Callback r3 = r8.mCallback
            int r1 = r1 + r4
            java.lang.Object r4 = r13.payload
            androidx.recyclerview.widget.AdapterHelper$UpdateOp r3 = r3.obtainUpdateOp(r2, r1, r5, r4)
            int r1 = r13.itemCount
            int r1 = r1 - r5
            r13.itemCount = r1
        L41:
            r9.set(r12, r11)
            int r11 = r13.itemCount
            if (r11 <= 0) goto L4c
            r9.set(r10, r13)
            goto L54
        L4c:
            r9.remove(r10)
            androidx.recyclerview.widget.OpReorderer$Callback r11 = r8.mCallback
            r11.recycleUpdateOp(r13)
        L54:
            if (r0 == 0) goto L59
            r9.add(r10, r0)
        L59:
            if (r3 == 0) goto L5e
            r9.add(r10, r3)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.OpReorderer.swapMoveUpdate(java.util.List, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp):void");
    }
}
