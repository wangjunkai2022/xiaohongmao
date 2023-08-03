package org.minidns.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeMap;
import org.minidns.dnsname.DnsName;
import org.minidns.record.u;

/* compiled from: SrvUtil.java */
/* loaded from: classes5.dex */
public class j {
    private static int a(int[] iArr, double d4) {
        int length = iArr.length;
        int i4 = 0;
        for (int i10 = 0; i10 < length && d4 >= iArr[i10]; i10++) {
            i4++;
        }
        return i4;
    }

    public static List<u> b(Collection<u> collection) {
        int i4;
        int i10;
        int a10;
        if (collection.size() == 1 && collection.iterator().next().f92995f.equals(DnsName.ROOT)) {
            return Collections.emptyList();
        }
        TreeMap treeMap = new TreeMap();
        for (u uVar : collection) {
            Integer valueOf = Integer.valueOf(uVar.f92992c);
            List list = (List) treeMap.get(valueOf);
            if (list == null) {
                list = new LinkedList();
                treeMap.put(valueOf, list);
            }
            list.add(uVar);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<u> list2 : treeMap.values()) {
            while (true) {
                int size = list2.size();
                if (size > 0) {
                    int[] iArr = new int[size];
                    Iterator it = list2.iterator();
                    while (true) {
                        i4 = 0;
                        if (it.hasNext()) {
                            if (((u) it.next()).f92993d > 0) {
                                i10 = 0;
                                break;
                            }
                        } else {
                            i10 = 1;
                            break;
                        }
                    }
                    int i11 = 0;
                    for (u uVar2 : list2) {
                        i4 += uVar2.f92993d + i10;
                        iArr[i11] = i4;
                        i11++;
                    }
                    if (i4 == 0) {
                        a10 = (int) (Math.random() * size);
                    } else {
                        a10 = a(iArr, Math.random() * i4);
                    }
                    arrayList.add((u) list2.remove(a10));
                }
            }
        }
        return arrayList;
    }
}
