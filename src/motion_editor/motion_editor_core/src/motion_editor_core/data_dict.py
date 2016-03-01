#!/usr/bin/python
import roslib
roslib.load_manifest('motion_editor_core')
import os
import glob
import pprint


class DataDict(dict):

    def __init__(self, data_path, data_type_name, clean_up=False):
        super(DataDict, self).__init__()
        try:
            os.makedirs(data_path)
        except OSError:
            if not os.path.isdir(data_path):
                raise
        self._data_path = data_path
        self._data_type_name = data_type_name
        self._load(clean_up)

    def _load(self, clean_up=False):
        for data_file_name in glob.glob(os.path.join(self._data_path, '*.py')):
            data_name_from_file_name = os.path.basename(data_file_name)[:-3]
            # print 'Info: loading file "%s"' % (os.path.basename(data_file_name))
            try:
                data_dicts = eval(open(data_file_name, 'U').read())
            except Exception as e:
                print '[Motion Editor] Error: loading file "%s":\n%s' % (os.path.basename(data_file_name), e)

            if len(data_dicts) > 1 or (len(data_dicts) > 0 and data_dicts.keys()[0] != data_name_from_file_name):
                print '[Motion Editor] Warning: file "%s" contains %s(s) other than "%s"...' % (os.path.basename(data_file_name), self._data_type_name, data_name_from_file_name)
                if clean_up:
                    # rename file to reflect data name and split file if multiple data_dicts found
                    for data_name in data_dicts:
                        self.save(data_name, data_dicts[data_name])
                    os.remove(data_file_name)
                else:
                    print '[Motion Editor] Info: To clean up %s files, run "%s".' % (self._data_type_name, __file__)

            for data_name in data_dicts:
                self._add(data_name, data_dicts[data_name])

    def _add(self, data_name, data):
        if data_name in self:
            print '[Motion Editor] Info: replacing existing %s "%s"!' % (self._data_type_name, data_name)
        self[data_name] = data

    def save(self, data_name, data):
        self._add(data_name, data)
        data_file_name = os.path.join(self._data_path, data_name + '.py')
        print '[Motion Editor] Info: saving %s "%s" to "%s"' % (self._data_type_name, data_name, os.path.basename(data_file_name))
        data_dicts = {data_name: data}
        pprint.pprint(data_dicts, stream=open(data_file_name, 'w'), indent=2)

    def delete(self, data_name):
        data_file_name = os.path.join(self._data_path, data_name + '.py')
        print '[Motion Editor] Info: deleting %s file "%s"' % (self._data_type_name, os.path.basename(data_file_name))
        os.remove(data_file_name)
        del self[data_name]

    def move(self, old_name, new_name):
        self.save(new_name, self[old_name])
        self.delete(old_name)
